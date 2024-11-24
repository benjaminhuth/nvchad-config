mkdir -p build
cd build
cmake ..
cd ..
rm -f compile_commands.json
ln -s build/compile_commands.json

