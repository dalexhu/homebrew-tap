# dalexhu Homebrew tap

Install RasterXYZ on macOS with:

```sh
brew install dalexhu/tap/rasterxyz
```

The formula installs the published RasterXYZ binary for Apple Silicon or Intel.
Use `--native` to generate XYZ tiles from supported JPEG or PNG imagery with
its world file and CRS sidecar. GDAL is optional and only needed for the
default GDAL backend.

```sh
rasterxyz survey.png tiles --native --workers 4 --min-zoom 9 --max-zoom 17
```
