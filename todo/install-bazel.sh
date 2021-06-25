version=3.7.2
wget https://github.com/bazelbuild/bazel/releases/download/3.7.2/bazel-3.7.2-installer-linux-x86_64.sh -O bazel-${version}.sh
chmod 777 bazel-${version}.sh
./bazel-${version}.sh --prefix=$(pwd)/bazel-${version}
rm -rf bazel-${version}.sh

# 15 22 * * * bash /projs/framework/tf_pub1/autogen_tf2_coverage_scripts/clear.sh
# 16 22 * * * bash /projs/framework/tf_pub1/autogen_tf2_coverage_scripts/autogen_tf2_coverage.sh