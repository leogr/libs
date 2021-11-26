#
# Copyright (C) 2021 The Falco Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
# the License. You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
# specific language governing permissions and limitations under the License.
#

# Retrieve git ref and commit hash
include(GetGitRevisionDescription)

set(DRIVER_GIT_TAG_PREFIX "driver-")

# Create the falco version variable according to git index
if(NOT DRIVER_VERSION)
    # Obtain the closest tag starting with "driver-" prefix
    git_describe(DRIVER_VERSION "--always" "--tags" "--match" "${DRIVER_GIT_TAG_PREFIX}*")
    # Fallback version
    # if(DRIVER_VERSION MATCHES "NOTFOUND$")
    #     set(DRIVER_VERSION "0.0.0")
    # endif()

    # Remove prefix from driver version string
    string(REGEX REPLACE "^${DRIVER_GIT_TAG_PREFIX}" "" DRIVER_VERSION "${DRIVER_VERSION}")
endif()

# todo(leogr): add semver checking and formatting here

message(STATUS "Driver version: ${DRIVER_VERSION}")