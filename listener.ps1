# simple port listener
# to start listener Listener.start();
# to sop listener Listerner.stop();
function Listener {
$input = Read-Host -Prompt "What port do you want to listen on: "
#convert variable string to integer
$port = [int]$input
#create socket for TCP listener
$listener = [System.Net.Sockets.TCPListener]$port
$listener.Start();
#listen for traffic on $port and accept connections made
$listener.AcceptTCPclient()
$listener.stop();
}
# on remote host use 
# (New-Object System.Net.Sockets.TcpClient).Connect('target', $port)