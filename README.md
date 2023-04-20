# svn2git

A containerised implementation of the [svn2git](https://github.com/nirvdrum/svn2git) command line tool.

## How to use this image

### To run the svn2git command line tool

To run the tool, with data stored in `/home/svn` on the host, use the following:
```sh
docker run --rm -it -v /home/svn:/svn2git garethflowers/svn2git
```

## License

*	[svn2git](https://github.com/nirvdrum/svn2git) is released under the [MIT License](https://github.com/nirvdrum/svn2git/blob/master/MIT-LICENSE).
*	This image is released under the [MIT License](https://raw.githubusercontent.com/garethflowers/docker-svn2git/master/LICENSE).
