#ping using  nc until  host is up
 sshping() {

  port=${2:-22} 
  host=$(echo $1|sed 's/.*@//')
  until nc -vzw 2 $host $port; do sleep 2; done && ssh $1

}

