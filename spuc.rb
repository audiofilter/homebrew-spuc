class Spuc < Formula
  desc "A C++ library for filters, equalizers and other DSP blocks"
  homepage "http://pyspuc.com"
  url "https://github.com/audiofilter/spuc/archive/2.4.1.tar.gz"
  version "2.4.1"
  sha256 "d9668fea5ebad521f4d492e8ea9ff1ce548333ca58daa5f5d7919aa9ca0bd00d"

  depends_on "cmake" => :build
  depends_on :x11 # if your formula requires any X11/XQuartz components

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
