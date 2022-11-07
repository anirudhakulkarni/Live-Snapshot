
if [ $1 = "boot" ] 
then
    for i in `seq 100` 
    do 
        echo running iter $i
        ./target/debug/vmm-reference --kernel path=../bzimage-hello-busybox --port 10010 >> temp.txt
    done
elif [ $1 = "restore" ]
then
    for i in `seq 100` 
    do 
        echo running iter $i
        ./target/debug/vmm-reference --kernel path=../bzimage-hello-busybox --port 10010 --cpu_path cpu.txt --memory_path mem.txt >> temp.txt
    done
elif [ $1 = "snapshot" ]
then
    for i in `seq 100` 
    do 
        echo running iter $i
        ./target/debug/vmm-reference --kernel path=../bzimage-hello-busybox --port 10010 >> temp.txt
    done
else
    echo Invalid input
fi