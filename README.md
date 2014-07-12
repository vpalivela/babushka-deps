# babushka-deps

My Personal Babushka Files only for the mac. You can find the docs at [http://babushka.me][Babushka].

## How to Install

##### Babushka
~~~ bash
sudo sh -c "`curl https://babushka.me/up`"
~~~

##### My babushka deps
~~~ bash
babushka sources -a vpalivela https://github.com/vpalivela/babushka-deps.git
~~~

##### Find all my deps
~~~ bash
babushka list vpalivela
~~~

##### Use my bootstrap
``` bash
babushka vpalivela:bootstrap
```

##### Update
~~~ bash
babushka sources -u
~~~

[Babushka]: http://babushka.me/
