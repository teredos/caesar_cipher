require './caesar_cipher'

describe '#caesar_cipher' do
  it 'returns caesar cipher, switching back to "a" after passing "z"' do
    expect(caesar_cipher('zebra crossing', 15)).to eql('otqgp rgdhhxcv')
  end
  it 'returns caesar cipher, maintaining the case of the given string' do
    expect(caesar_cipher('aLtErNaTiNg caPS', 5)).to eql('fQyJwSfYnSl hfUX')
  end
  it 'returns given string if shift factor is 0' do
    expect(caesar_cipher('I am the string.', 0)).to eql('I am the string.')
  end
  it 'returns an empty string if no string is given' do
    expect(caesar_cipher('', 12)).to eql('')
  end
end
