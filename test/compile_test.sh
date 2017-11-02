#!/usr/bin/env bash

OUTPUT_DIR="$(mktemp -d ${SHUNIT_TMPDIR}/output.XXXX)"
BUILD_DIR="${OUTPUT_DIR}/build"
CACHE_DIR="${OUTPUT_DIR}/cache"

mkdir -p ${OUTPUT_DIR}
mkdir -p ${BUILD_DIR}
mkdir -p ${CACHE_DIR}

echo "Build dir: ${BUILD_DIR}"
${BUILDPACK_HOME}/bin/compile ${BUILD_DIR} ${CACHE_DIR}

rm -rf ${OUTPUT_DIR}
