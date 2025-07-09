@echo off
set "DRAWIO_PATH=C:\Program Files\draw.io\draw.io.exe"
set "OUTPUT_DIR=svg-out"

mkdir %OUTPUT_DIR%

for /R %%f in (*.drawio.svg) do (
    echo Exporting %%f
    "%DRAWIO_PATH%" --export --format svg --crop --uncompressed --transparent "%%f"
)

echo ✅ Done exporting all .drawio.svg files to %OUTPUT_DIR%
pause
