# aria2
Aria2 is a downloading tool.It can be used for downloading http/ftp/bt/magnet. And this docker image does not include a webui.

## usage:
### run:
```bash
sudo docker run -d --name=aria2 -p 6800:6800 -e "SECRET=xxxxxx" -e "UID=1000" -e "GID=1000" -v /nas/TDDOWNLOAD:/data aria2:latest
```
Replace "/nas/TDDOWNLOAD" with you own download path.<br>
Replace "xxxxxx" with you onw rpc-secret token.<br>

## webui
[ariang](http://ariang.mayswind.net/latest/#!/downloading)<br>

## more:
[Tracker list](https://github.com/ngosang/trackerslist/raw/master/trackers_all.txt)<br>
[more detail](https://github.com/w01230/aria2)<br>
