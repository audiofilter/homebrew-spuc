class Spuce < Formula
  desc "A C++ library for DSP filters"
  homepage "http://pyspuc.com"
  head "https://github.com/audiofilter/spuce.git"
  url "https://github.com/audiofilter/spuce/archive/0.4.2.tar.gz"
  version "0.4.2"
  sha256 "3eeacc4cb993ba77bd5c706c11bdf440c94344b93b479b8583305cc1b48b384b"
  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "..", "-DCMAKE_PREFIX_PATH=/usr/local/opt/qt5", *std_cmake_args
      system "make", "install" # if this fails, try separate make/make install steps
    end
  end

  test do
    system "false"
  end
end
