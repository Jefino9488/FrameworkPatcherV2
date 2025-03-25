 recompile

if [ -d framework_decompile/classes ]; then
  java -jar smali.jar a -a 34 classes -o framework/classes.dex
else
  echo "classes directory not found, skipping recompilation."
fi

for i in {2..5}; do
  if [ -d "framework_decompile/classes$i" ]; then
    java -jar smali.jar a -a 34 "classes$i" -o "framework/classes$i.dex"
  else
    echo "classes$i directory not found, skipping recompilation."
  fi
done

cd framework
jar cf ../framework_new.jar *