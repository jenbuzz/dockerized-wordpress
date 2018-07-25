# Dockerized Wordpress
Setup a docker environment for Wordpress with PHP 7.2, nginx 1.15, and MySQL 5.7. This docker setup is to be used for local development and testing.

## Usage

Start initial container setup:
```bash
$ docker-compose up --build -d
```

To use an existing Wordpress installation copy it to a directory named "wordpress" in the root of this project.

To setup a new Wordpress installation run the following command:
```bash
$ make install-wordpress
```

## Configuration
| Database ||
|----------	| ----------------- |
| Host      | `wordpress_mysql` |
| Username  | `root`            |
| Password  | `abcd1234`        |
| Database  | `wordpress`       |

## License
This package is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT)