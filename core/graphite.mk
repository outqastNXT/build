# Copyright (C) 2014 The SaberMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

GRAPHITE_FLAGS +=  \
		-fgraphite \
		-fgraphite-identity \
		-floop-flatten \
		-floop-parallelize-all \
		-ftree-loop-linear \
		-floop-interchange \
		-floop-strip-mine \
		-floop-block \
		-mcpu=cortex-a15 \
		-mtune=cortex-a15 \
		-fforce-addr \
		-funsafe-loop-optimizations \
		-funroll-loops \
		-ftree-loop-distribution \
		-fsection-anchors \
		-ftree-loop-im \
		-ftree-loop-ivcanon \
		-ffunction-sections \
		-fgcse-las \
		-fgcse-sm \
		-fweb \
		-ffp-contract=fast \
		-mvectorize-with-neon-quad \
		-floop-nest-optimize

ifdef LOCAL_CFLAGS
LOCAL_CFLAGS += $(call cc-option,$(GRAPHITE_FLAGS))
else
LOCAL_CFLAGS := $(call cc-option,$(GRAPHITE_FLAGS))
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CFLAGS += $(call cpp-option,$(GRAPHITE_FLAGS))
else
LOCAL_CPPFLAGS := $(call cpp-option,$(GRAPHITE_FLAGS))
endif
####
