# aria2
Aria2 is a downloading tools.It can be used for downloading http/ftp/bt/magnet. And it does not include a webui.

## usage
### It does not support rpc-secure.
### run:
```bash
sudo docker run -d --name=aria2 -p 6800:6800 -v /nas/TDDOWNLOAD:/data aria2:1.0
```
You can replace "/nas/TDDOWNLOAD" to you own download path.


## more
[Tracker list](https://github.com/ngosang/trackerslist/raw/master/trackers_all.txt)
[more detail](https://github.com/w01230/aria2) 
