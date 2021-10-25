arr = []

10.times do |i|
    str = ""
    5.times do |char|
        str << ((65+rand(25)).chr)
    end
    arr.push(str)
end

print arr