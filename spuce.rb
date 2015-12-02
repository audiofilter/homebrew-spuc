class Spuce < Formula
  desc "A C++ library for DSP filters"
  homepage "http://pyspuc.com"
  head "https://github.com/audiofilter/spuce.git"
  url "https://github.com/audiofilter/spuce/archive/0.4.1.tar.gz"
  version "0.4.1"
  sha256 "7e0cf0b5b0212be7347fbc620b61250fdf2701ad9425831c00ea4b26aee7c1e1"
  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "..", "-DCMAKE_PREFIX_PATH=/usr/local/opt/qt5" *std_cmake_args
      system "make", "install" # if this fails, try separate make/make install steps
    end
  end

  test do
    system "false"
  end
end
