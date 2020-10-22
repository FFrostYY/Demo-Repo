FROM 1a07a6d61b45 AS build

WORKDIR project/

COPY CMakeLists.txt ./

COPY src ./src

RUN ls src

COPY include ./include

RUN cmake . && make

FROM ubuntu:bionic

WORKDIR /opt/hellomake

COPY --from=build project/hellomake ./

CMD ["./hellomake"]
