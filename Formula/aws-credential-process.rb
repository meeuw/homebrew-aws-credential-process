class AwsCredentialProcess < Formula
  include Language::Python::Virtualenv

  desc "Script to use as credential_process for the AWS CLI (including boto3)"
  homepage "https://github.com/meeuw/aws-credential-process"
  url "https://files.pythonhosted.org/packages/a6/11/02314a0fb7ef554bb5d5fee6bc047f05c2612d16b6d434bc47288b0521d3/aws-credential-process-0.16.0.tar.gz"
  sha256 "a64ff9ef7993e0ad0bdb668a020ef833b1755f3d0fdbfa1540ca16ff150aea23"
  license "GPL-3.0-or-later"
  head "https://github.com/meeuw/aws-credential-process.git"

  bottle do
    root_url "https://github.com/meeuw/homebrew-aws-credential-process/releases/download/aws-credential-process-0.16.0"
    rebuild 1
    sha256 cellar: :any,                 big_sur:      "d06adf1c4687d863b6d67498d97e6550554fca67c5b8c321dcc64f339016b6a2"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1359cc0efdfb522e84811d3202af7cc7836644eb13329cdb0d6037f5efeecb39"
  end

  depends_on "rust" => :build
  depends_on "swig" => :build
  depends_on "openssl@1.1"
  depends_on "python@3.10"

  uses_from_macos "libffi"

  on_linux do
    depends_on "pkg-config" => :build
    depends_on "pcsc-lite"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/76/95/c437b977c631f280b016bc8b34ca75aa3f3316143cc3411f02ed0ebf06d3/boto3-1.24.35.tar.gz"
    sha256 "2bc600c88d963bbf98cb1244e34f5b7c889a861121b95041c6a47f917fa46748"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/6c/47/3f60500f6c26d6690ba92be09fdb5036e7bec5000096f459fe68b330ec1e/botocore-1.27.35.tar.gz"
    sha256 "d2e708dd766b21c8e20a57ce1a90e98d324f871f81215efbc2dddaa42d13c551"
  end

  resource "cfii" do
    url "https://files.pythonhosted.org/packages/2b/a8/050ab4f0c3d4c1b8aaa805f70e26e84d0e27004907c5b8ecc1d31815f92a/cffi-1.15.1.tar.gz"
    sha256 "d400bfb9a37b1351253cb402671cea7e89bdecc294e8016a707f6d1d8ac934f9"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
    sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/89/d9/5fcd312d5cce0b4d7ee8b551a0ea99e4ea9db0fdbf6dd455a19042e3370b/cryptography-37.0.4.tar.gz"
    sha256 "63f9c17c0e2474ccbebc9302ce2f07b55b3b3fcb211ded18a42d5764f5c10a82"
  end

  resource "fido2" do
    url "https://files.pythonhosted.org/packages/cd/69/1af41955530255ca2337bab370a75b3dbbb8be8707f6280c9efedfb77a85/fido2-1.0.0.tar.gz"
    sha256 "2509a4958b666d747fd5754dfa9357da2d81b52edc0ecff75b68cea939154c02"
  end

  resource "jeepney" do
    url "https://files.pythonhosted.org/packages/d6/f4/154cf374c2daf2020e05c3c6a03c91348d59b23c5366e968feb198306fdf/jeepney-0.8.0.tar.gz"
    sha256 "5efe48d255973902f6badc3ce55e2aa6c5c3b3bc642059ef3a91247bcfcc5806"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
    sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
  end

  resource "keyring" do
    url "https://files.pythonhosted.org/packages/01/92/9a1973e6132089e1263b0dc545a021d0733bf5d5b6fa19cc7e641e1925ae/keyring-23.7.0.tar.gz"
    sha256 "782e1cd1132e91bf459fcd243bcf25b326015c1ac0b198e4408f91fa6791062b"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/5e/0b/95d387f5f4433cb0f53ff7ad859bd2c6051051cebbb564f139a999ab46de/pycparser-2.21.tar.gz"
    sha256 "e644fdec12f7872f86c58ff790da456218b10f863970249516d60a5eaca77206"
  end

  resource "pynentry" do
    url "https://files.pythonhosted.org/packages/51/9b/73bc58d5db8cf930e15eeb4ec2208d3620e2328cada8d6d9e940a07d1f3a/pynentry-0.1.6.tar.gz"
    sha256 "755aee848bc927cf19285c3d798d95e4c58ebc81718fef85234e962cd2dd079c"
  end

  resource "pyOpenSSL" do
    url "https://files.pythonhosted.org/packages/35/d3/d6a9610f19d943e198df502ae660c6b5acf84cc3bc421a2aa3c0fb6b21d1/pyOpenSSL-22.0.0.tar.gz"
    sha256 "660b1b1425aac4a1bea1d94168a85d99f0b3144c869dd4390d27629d0087f1bf"
  end

  resource "pyscard" do
    url "https://files.pythonhosted.org/packages/10/00/8dcf33f0695ea3b1eac265c95a6d61cae138eb60527d9f58d7dd7b8cc812/pyscard-2.0.3.tar.gz"
    sha256 "13c3e108163fac4f1237804ed20c5b1eb1bd5d5ee3e96adb60bfb6b9122f528d"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
    sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/e1/eb/e57c93d5cd5edf8c1d124c831ef916601540db70acd96fa21fe60cef1365/s3transfer-0.6.0.tar.gz"
    sha256 "2ed07d3866f523cc561bf4a00fc5535827981b117dd7876f036b0c1aca42c947"
  end

  resource "SecretStorage" do
    url "https://files.pythonhosted.org/packages/bc/3b/6e294fcaa5aed4059f2aa01a1ee7d343953521f8e0f6965ebcf63c950269/SecretStorage-3.3.2.tar.gz"
    sha256 "0a8eb9645b320881c222e827c26f4cfcf55363e8b374a021981ef886657a912f"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "toml" do
    url "https://files.pythonhosted.org/packages/be/ba/1f744cdc819428fc6b5084ec34d9b30660f6f9daaf70eead706e3203ec3c/toml-0.10.2.tar.gz"
    sha256 "b3bda1d108d5dd99f4a20d24d9c348e91c4db7ab1b749200bded2f839ccbe68f"
  end

  resource "yubikey-manager" do
    url "https://files.pythonhosted.org/packages/f8/67/734ba60a918822d2f35d5120e81a277f1f0274fcbd8e02ff7486ef9157cc/yubikey-manager-4.0.9.tar.gz"
    sha256 "384e3a2a66df4ce417aede734eb8c5d0c1b7981290e9bc940c85cc000ef833b4"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/25/36/f056e5f1389004cf886bb7a8514077f24224238a7534497c014a6b9ac770/urllib3-1.26.10.tar.gz"
    sha256 "879ba4d1e89654d9769ce13121e0f94310ea32e8d2f8cf587b77c08bbcdb30d6"
  end

  def install
    if OS.linux?
      # Fixes: smartcard/scard/helpers.c:28:22: fatal error: winscard.h: No such file or directory
      ENV.append "CFLAGS", "-I#{Formula["pcsc-lite"].opt_include}/PCSC"
    end
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aws-credential-process --version")
  end
end
