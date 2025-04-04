FROM debian:bookworm AS base
ENV DEBIAN_FRONTEND=noninteractive

ARG compiler=gcc
ARG compiler_version=12
ARG build_type=Release
ARG cmake_version=3.30.5
ARG cmake_generator=Ninja
ARG cache_conan=true

ENV compiler=$compiler
ENV compiler_version=$compiler_version
ENV build_type=$build_type
ENV cmake_version=$cmake_version
ENV cmake_generator=$cmake_generator

RUN <<EOF
    apt-get update
    apt-get install -y \
        curl \
        git \
        vim \
        ca-certificates \
        build-essential \
        gnupg
EOF

COPY <<EOF simple.cpp
#include <iostream>
int main(){
    std::cout << "hello" << std::endl;
    return0
}
EOF
