# aria2
Aria2 is a downloading tool.It can be used for downloading http/ftp/bt/magnet. And this docker image does not include a webui.

## usage:
### It does not support rpc-secure.
### run:
```bash
sudo docker run -d --name=aria2 -p 6800:6800 -e "SECRET=xxxxxx" -v /nas/TDDOWNLOAD:/data aria2:latest
```
Replace "/nas/TDDOWNLOAD" with you own download path.
Replace "xxxxxx" with you onw rpc-secret token.


## more:
[Tracker list](https://github.com/ngosang/trackerslist/raw/master/trackers_all.txt)<br>
[more detail](https://github.com/w01230/aria2) 
