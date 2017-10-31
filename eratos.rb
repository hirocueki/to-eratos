
class Eratos
    def self.calc(x)
    
        return [] if x < 2
        return [2] if x == 2

        # ステップ 1
        # 探索リストに2からxまでの整数を昇順で入れる。
        list = []
        list = [*2..x]

        # ステップ 2
        # 探索リストの先頭の数を素数リストに移動し、
        primes = []
        sqrtX = Math.sqrt(x)

        loop do 
            p = list.shift
        
            break if p == nil
            primes.push p

            # ステップ 3
            # 上記の篩い落とし操作を探索リストの先頭値がxの平方根に達するまで行う。
            break if sqrtX <= p.to_f

            # その倍数を探索リストから篩い落とす。
            list = list.select{|n|n%p!=0}
        end
        # ステップ 4
        # 探索リストに残った数を素数リストに移動して処理終了。
        primes.push list
        primes.flatten!
        primes
    end
end