# python-dockerfile

## Supported TAGs

* py3.8-x
  * [`py3.8-alpine`](https://github.com/room2352/python-dockerfile/blob/master/alpine/py3.8/Dockerfile)
  * [`py3.8-slim`](https://github.com/room2352/python-dockerfile/blob/master/slim/py3.8/Dockerfile)
* py3.7-x
  * [`py3.7-alpine`](https://github.com/room2352/python-dockerfile/blob/master/alpine/py3.7/Dockerfile)
  * [`py3.7-slim`](https://github.com/room2352/python-dockerfile/blob/master/slim/py3.7/Dockerfile)
* py3.6-x
  * [`py3.6-alpine`](https://github.com/room2352/python-dockerfile/blob/master/alpine/py3.6/Dockerfile)
  * [`py3.6-slim`](https://github.com/room2352/python-dockerfile/blob/master/slim/py3.6/Dockerfile)
* pypy3.6-x
  * [`pypy3.6-slim`](https://github.com/room2352/python-dockerfile/blob/master/slim/pypy3.6/Dockerfile)


## Included packages

* curl


## How to Use

1. Put `Pipfile` and `Pipfile.lock` in docker context directory.

2. Place `build-deps.in` in docker context directory.
And list build dependencies here.

    ```
    build-base
    python3-dev
    ...
    ```

3. Place `runtime-deps.in` in docker context directory.
And list additional packages you want here.

    ```
    libfoo
    libbar
    ...
    ```

4. `Dockerfile`

    ```
    FROM room2352/python:{TAG}

    COPY . /app
    WORKDIR /app

    CMD ...
    ```

