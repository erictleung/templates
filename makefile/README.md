Makefile Template
=================

This is a simple template to get going with a Makefile that prints out rules
when you run `make help`.

To allow `make` rules to work with `make help`, each rule needs to be appended
with two octothorpe or "hash" signs (`##`).

```make
example : ## Example make rule
    echo "Here!"
```

Example Use
-----------

```bash
$ make
example                       This is an example
help                          Help page for Makefile
```
