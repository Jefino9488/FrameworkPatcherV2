export default async function handler(req, res) {
    try {
        const response = await fetch('http://20.193.137.189:8000/devices');

        if (!response.ok) {
            throw new Error(`Upstream server responded with ${response.status}`);
        }

        const data = await response.json();

        // Set cache headers to improve performance
        res.setHeader('Cache-Control', 's-maxage=60, stale-while-revalidate=300');
        res.status(200).json(data);
    } catch (error) {
        console.error('Proxy Error:', error);
        res.status(500).json({error: 'Failed to fetch devices from upstream server'});
    }
}
