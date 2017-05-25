# **Beanstalk is a simple, fast work queue**

>Its interface is generic, but was originally designed for reducing the latency of page views in high-volume web applications by running time-consuming tasks asynchronously. Visit [**project page**](https://github.com/kr/beanstalkd) on Github.

&nbsp;  
## Example Usage

**with docker run** 

`$ docker run -d -p 11300:11300 pam79/beanstalkd`

&nbsp;  
**with docker-compose.yml file** 

```shell
beanstalkd:
  image: pam79/beanstalkd
  ports:
    - "11300:11300"
  privileged: true
  depends_on:
    - app
  networks:
	- default
```
