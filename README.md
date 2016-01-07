# u14sca
Shippable CI image for Scala on Ubuntu 14.04. Available versions are:

1. 2.9.3
2. 2.10.5
3. 2.11.6

## How to use

You can use this image to run ruby builds on Shippable. Just update your `shippable.yml` file and add the `build_image` directive. Here's a sample YML file to get you going:


```
language: scala

scala:
  - 2.9.3
  - 2.10.5
  - 2.11.6

before_script:
  - export PATH=$PATH:$SHIPPABLE_REPO_DIR

build_image: drydock/u14sca:prod

script:
  - export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:PermSize=256M -XX:MaxPermSize=512M"
  - sbt clean scoverage:test
```
