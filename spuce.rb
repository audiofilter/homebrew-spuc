class Spuce < Formula
  desc "A C++ library for DSP filters (for now)"
  homepage "http://pyspuc.com"
  head "https://github.com/audiofilter/spuce.git"
  url "https://github.com/audiofilter/spuc/archive/0.1.tar.gz"
  version "0.1"
  sha256 "d9668fea5ebad521f4d492e8ea9ff1ce548333ca58daa5f5d7919aa9ca0bd00d"

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install" # if this fails, try separate make/make install steps
    end
  end

  test do
    system "false"
  end
end
