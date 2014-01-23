class RedisLeveldb < Formula
  head 'https://github.com/KDr2/redis-leveldb'

  depends_on 'libev'
  depends_on 'gmp'

  def install
    system("git submodule init")
    system("git submodule update")
    system("make")
    bin.install("redis-leveldb")
  end
end
