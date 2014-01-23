require 'formula'
class RedisLeveldb < Formula
  head 'git://github.com/KDr2/redis-leveldb'

  depends_on 'libev'
  depends_on 'gmp'

  def install
    system("make")
    bin.install("redis-leveldb")
  end
end
