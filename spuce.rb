class Spuce < Formula
  desc "A C++ library for DSP filters"
  homepage "http://pyspuc.com"
  head "https://github.com/audiofilter/spuce.git"
  url "https://github.com/audiofilter/spuce/archive/0.4.tar.gz"
  version "0.4"
  sha256 "70e488772e70b20bf3f51cdf098ca4a64552275e840842cb1f81c7aad513409e"

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
