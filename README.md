# python-dockerfile

## Supported TAGs

* [`py3.7-alpine`](https://github.com/room2352/python-dockerfile/blob/master/alpine/py3.7/Dockerfile)
* [`py3.7-slim`](https://github.com/room2352/python-dockerfile/blob/master/slim/py3.7/Dockerfile)


## Included packages

* curl


## How to Use

1. Place `build-deps.in` in docker context directory.
And list build dependencies here.

    ```
    build-base
    python3-dev
    ...
    ```

2. Place `runtime-deps.in` in docker context directory.
And list additional packages you want here.

    ```
    libfoo
    libbar
    ...
    ```

2. `Dockerfile`

    ```
    FROM room2352/python:{TAG}

    COPY . /app
    WORKDIR /app

    CMD ...
    ```

