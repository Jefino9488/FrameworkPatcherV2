export default async function handler(req, res) {
    const {codename} = req.query;

    if (!codename) {
        return res.status(400).json({error: 'Device codename is required'});
    }

    try {
        const response = await fetch(`http://20.193.137.189:8000/devices/${codename}/software`);

        if (!response.ok) {
            if (response.status === 404) {
                return res.status(404).json({error: 'Device not found'});
            }
            throw new Error(`Upstream server responded with ${response.status}`);
        }

        const data = await response.json();

        res.setHeader('Cache-Control', 's-maxage=60, stale-while-revalidate=300');
        res.status(200).json(data);
    } catch (error) {
        console.error('Proxy Error:', error);
        res.status(500).json({error: 'Failed to fetch software info from upstream server'});
    }
}
