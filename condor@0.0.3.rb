# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CondorAT003 < Formula
  version "0.0.3"
  desc "由Dart实现的符号表上传辅助工具"
  homepage "https://github.com/LinXunFeng/condor"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/LinXunFeng/condor/releases/download/#{version}/condor_arm64.tar.gz"
    sha256 "90181244e87a67b0479c2b00212f1d926bd4c1d8e363ff7fd05db0c7f2d9251e"
  else
    url "https://github.com/LinXunFeng/condor/releases/download/#{version}/condor_x86_64.tar.gz"
    sha256 "b500a8c96c0a196ab533fc307202010184eb46f943dc93bf4ca691859a956695"
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
