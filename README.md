# haveged in a docker container

because entropy matters

## options when `/dev/random` blocks

read these:

- [Challenges With Randomness In Multi-tenant Linux Container Platforms](https://blog.pivotal.io/pivotal-cloud-foundry/features/challenges-with-randomness-in-multi-tenant-linux-container-platforms)
- [Myths about /dev/urandom](http://www.2uo.de/myths-about-urandom/)

## make `/dev/random` behave like `/dev/urandom`

This one is taken from [StackExchange](http://security.stackexchange.com/questions/14386/what-do-i-need-to-configure-to-make-sure-my-software-uses-dev-urandom/14399#14399)

perform as `root`:

    rm /dev/random
    mknod /dev/random c 1 9

## want some noise?

If you ever missed some entropy (e.g. when `cat /proc/sys/kernel/random/entropy_avail` < 100), and `rm /dev/random` is too weird for you, you probably considered generating some noise.

A tool like [haveged](http://www.issihosts.com/haveged/) helps.

Run like this:

    docker run --rm -it --privileged --device /dev/urandom:/dev/random gesellix/haveged
