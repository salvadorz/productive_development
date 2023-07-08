#!/bin/bash

# Directorio base
base_dir="$1"

# Limpieza de contadores de cobertura
lcov --gcov-tool gcov -directory . -b "$base_dir" --zerocounters

# Creación de una línea base de cobertura
lcov --gcov-tool gcov -c -i -d . -b "$base_dir" -o coverage.base

# Ejecución de las pruebas
ctest

# Captura de los contadores de cobertura
lcov --gcov-tool gcov --directory . -b "$base_dir" --capture --output-file coverage.capture

# Agregar contadores de línea base
lcov --gcov-tool gcov -a coverage.base -a coverage.capture --output-file coverage.total

# Patrones de exclusión para filtrar los datos de cobertura
exclusion_patterns="*/usr/include/*"

# Filtrar los datos de cobertura
lcov --gcov-tool gcov --remove coverage.total "$exclusion_patterns" --output-file coverage.info

# Opciones para generar informes HTML
genhtml_options="--demangle-cpp"

# Generar informes HTML
genhtml "$genhtml_options" -o coverage coverage.info
