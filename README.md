# haveged in a docker container

because entropy matters

## options when `/dev/random` blocks

read these:

- [Challenges With Randomness In Multi-tenant Linux Container Platforms](https://blog.pivotal.io/pivotal-cloud-foundry/features/challenges-with-randomness-in-multi-tenant-linux-container-platforms)
- [Myths about /dev/urandom](http://www.2uo.de/myths-about-urandom/)

## want some noise?

If you ever missed some entropy (e.g. when `cat /proc/sys/kernel/random/entropy_avail` < 100), you probably considered generating some noise.
Haveged helps.

Run like this:

    docker run --rm -it --privileged --device /dev/urandom:/dev/random gesellix/haveged
