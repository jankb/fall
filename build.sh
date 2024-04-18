javac -d out -sourcepath hello hello/world/fallbean/FallBean.java hello/world/ClassScanner.java
./kc/kotlinc/bin/kotlinc -cp out -include-runtime hello/world/hello.kt -d out 
cd out
jar cvfe hello.jar hello.world.HelloKt *

echo "To run:"
echo "java -cp "out/hello.jar:./kc/kotlinc/lib/kotlin-stdlib.jar:./kc/kotlinc/lib/kotlin-reflect.jar" hello.world.HelloKt"
