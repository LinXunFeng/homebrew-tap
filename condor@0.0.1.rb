# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CondorAT001 < Formula
  version "0.0.1"
  desc "由Dart实现的符号表上传辅助工具"
  homepage "https://github.com/LinXunFeng/condor"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/LinXunFeng/condor/releases/download/#{version}/condor_arm64.tar.gz"
    sha256 "662dce24a2e0cdb3060d9bf15dd7fd4871377c8196fdfc098deed75836dbcc05"
  else
    url "https://github.com/LinXunFeng/condor/releases/download/#{version}/condor_x86_64.tar.gz"
    sha256 "d656fd05f13f997ff4293520b9ef74fe5afe691a27d95f78718f93bb611fce85"
  end

  # depends_on "cmake" => :build

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", "--disable-silent-rules", *std_configure_args
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install "condor"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test condor`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
