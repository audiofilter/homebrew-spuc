class Spuc < Formula
  desc "A C++ library for filters, equalizers and other DSP blocks"
  homepage "http://pyspuc.com"
  url "https://github.com/audiofilter/spuc/archive/2.4.0.tar.gz"
  version "2.4.0"
  sha256 "188b1d0677f9ad0a8fc3e60d709206e95de0cad2dfc3b6340efedcd47a23e4cb"

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
