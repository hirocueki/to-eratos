require File.expand_path(File.dirname(__FILE__) + '/../eratos')


describe Eratos do
    specify { expect(Eratos.calc(2)).to eq [2]}
    specify { expect(Eratos.calc(3)).to eq [2, 3]}
    specify { expect(Eratos.calc(5)).to eq [2, 3, 5]}
    specify { expect(Eratos.calc(30)).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]}
end