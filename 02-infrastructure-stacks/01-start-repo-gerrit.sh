#!/bin/bash

CUR_DIR=`pwd`
cd $CUR_DIR/../stacks/repository-nexus && rancher up -d
cd $CUR_DIR/../stacks/gerrit && rancher up -d
