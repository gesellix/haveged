# haveged
entropy matters

If you ever missed some entropy (e.g. when `cat /proc/sys/kernel/random/entropy_avail` < 100), you probably considered generating some noise.
Haveged helps.

Run like this:

    docker run --rm -it --privileged -v /dev/urandom:/dev/random haveged
