#!/bin/bash
#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

set -e

../../tools/build/compile.sh  HelloSwift3 swift:3.1.1 "-v"

../../tools/build/compile.sh  HelloSwift4 swift:4.1 "-v"
../../tools/build/compile.sh  SwiftyRequest swift:4.1 "-v"
../../tools/build/compile.sh  SwiftyRequestCodable swift:4.1 "-v"
../../tools/build/compile.sh  HelloSwift4Codable swift:4.1 "-v"

../../tools/build/compile5.sh  action-swift-v5.1 HelloSwift5 swift5.1 "-v"
../../tools/build/compile5.sh  action-swift-v5.1 HelloSwift5Codable swift5.1 "-v"
../../tools/build/compile5.sh  action-swift-v5.1 SwiftyRequest5 swift:5.1 "-v"
../../tools/build/compile5.sh  action-swift-v5.1 SwiftyRequestCodable5 swift:5.1 "-v"


cd actions
make all
