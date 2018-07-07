## **Beanstalkd - A Simple, Fast Work Queue**

Its interface is generic, but was originally designed for reducing the latency of page views in high-volume web applications by running time-consuming tasks asynchronously. Visit [**project page**](https://github.com/kr/beanstalkd) on Github.

Beanstalkd version: **`v1.10-3`**

> The version of Beanstalkd used in this image will always correspond to the version available in the apt repository of the current Ubuntu LTS release which at the time of writing, was `Ubuntu 16.04`

## Example Usage

* #### with docker run

  ```shell
  $ docker run -d -p 11300:11300 pam79/beanstalkd
  ```

&nbsp;
* #### with docker-compose.yml file

  ```shell
  app:
    image: foo/bar
    container_name: app  

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
