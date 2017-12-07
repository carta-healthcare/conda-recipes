# conda-recipes

Recipes for conda.

# Building packages
To build using your machine's anaconda installation, run the following command:

```
./build.sh <packagename>/<version>
```
and follow the prompts to upload to anaconda cloud.

To build in a linux docker image, run the following command:
```
./build-linux.sh <packagename>/<version>
```
This is useful for building linux packages when you're working in a Windows or Mac environment.


