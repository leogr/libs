// SPDX-License-Identifier: Apache-2.0
/*
Copyright (C) 2025 The Falco Authors.
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

#pragma once

#include <libsinsp/sinsp_filter_transformers/sinsp_filter_transformer.h>

class sinsp_filter_transformer_basename : public sinsp_filter_transformer {
public:
	sinsp_filter_transformer_basename();
	bool transform_type(ppm_param_type& t, uint32_t& flags) const override;
	bool transform_values(std::vector<extract_value_t>& vec,
	                      ppm_param_type& t,
	                      uint32_t& flags) override;
};
