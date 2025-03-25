
7z x framework.jar -oframework

if [ -f "framework/classes.dex" ]; then
  java -jar tools/baksmali.jar d -a 35 "framework/classes.dex" -o framework_decompile/classes
else
  echo "framework/classes.dex not found, skipping decompile."
fi

for i in {2..5}; do
  if [ -f "framework/classes${i}.dex" ]; then
    java -jar tools/baksmali.jar d -a 35 "framework/classes${i}.dex" -o "framework_decompile/classes${i}"
  else
    echo "framework/classes${i}.dex not found, skipping decompile."
  fi
done

