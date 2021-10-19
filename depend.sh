#! /bin/bash
# shellcheck disable=SC2154
 # Script For Building Android arm64 Kernel
 # Copyright (c) 2018-2021 Update script by Ivan Ssl https://t.me/Arrayfs
 #
 # Licensed under the Apache License, Version 2.0 (the "License");
 # you may not use this file except in compliance with the License.
 #
 #      http://www.apache.org/licenses/LICENSE-2.0
#
#
set -e
#Kernel building script
# Function to show an informational message
msg() {
	echo
    echo -e "\e[1;32m$*\e[0m"
    echo
}
msg "|| Update && Upgrade Package ||"
#
# 
export DEBIAN_FRONTEND=noninteractive
export TZ=Asia/Jakarta
export TIME=$(date +"%S-%F")
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
apt install -y tzdata
  apt update && \
    apt upgrade -y && \
      apt install --no-install-recommends -y \
	autoconf \
	autogen \
	automake \
	autotools-dev \
	bc \
	binutils \
	binutils-aarch64-linux-gnu \
	binutils-arm-linux-gnueabi \
	bison \
	bzip2 \
	ca-certificates \
	coreutils \
	cmake \
	curl \
	expect \
	flex \
	g++ \
	gawk \
	gcc \
	git \
	gnupg \
	gperf \
	help2man \
	lftp \
	libc6-dev \
	libelf-dev \
	libgomp1-* \
	liblz4-tool \
	libncurses5-dev \
	libssl-dev \
	libstdc++6 \
	libtool \
	libtool-bin \
	m4 \
	make \
	nano \
	openjdk-11-jdk \
	openssh-client \
	openssl \
	ovmf \
	patch \
	pigz \
	python3 \
	python \
	rsync \
	shtool \
	subversion \
	tar \
	texinfo \
	tzdata \
	u-boot-tools \
	unzip \
	wget \
	xz-utils \
	zip \
	zlib1g-dev \
	zstd -y
# 
apt dist-upgrade -y && \
  apt install --fix-missing && \
    apt autoremove -y
dpkg-reconfigure tzdata
#
