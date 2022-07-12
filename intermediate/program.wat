(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param f64 f64 f64 f64) (result i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32 f64 f64 f64 f64)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32) (result i32)))
  (func (;0;) (type 2)
    call 10)
  (func (;1;) (type 1) (param f64 f64 f64 f64) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
    global.get 0
    local.set 4
    i32.const 112
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    local.get 0
    f64.store offset=104
    local.get 6
    local.get 1
    f64.store offset=96
    local.get 6
    local.get 2
    f64.store offset=88
    local.get 6
    local.get 3
    f64.store offset=80
    local.get 6
    f64.load offset=104
    local.set 12
    local.get 6
    f64.load offset=96
    local.set 13
    i32.const 0
    local.set 7
    local.get 7
    f64.convert_i32_s
    local.set 14
    local.get 13
    local.get 14
    f64.mul
    local.set 15
    f64.const 0x1p+0 (;=1;)
    local.set 16
    local.get 13
    local.get 16
    f64.mul
    local.set 17
    local.get 12
    local.get 15
    f64.add
    local.set 18
    local.get 6
    local.get 18
    f64.store offset=56
    local.get 6
    local.get 17
    f64.store offset=64
    local.get 6
    f64.load offset=88
    local.set 19
    local.get 6
    f64.load offset=80
    local.set 20
    i32.const 0
    local.set 8
    local.get 8
    f64.convert_i32_s
    local.set 21
    local.get 20
    local.get 21
    f64.mul
    local.set 22
    f64.const 0x1p+0 (;=1;)
    local.set 23
    local.get 20
    local.get 23
    f64.mul
    local.set 24
    local.get 19
    local.get 22
    f64.add
    local.set 25
    local.get 6
    local.get 25
    f64.store offset=40
    local.get 6
    local.get 24
    f64.store offset=48
    local.get 6
    f64.load offset=56
    local.set 26
    local.get 6
    f64.load offset=64
    local.set 27
    local.get 6
    f64.load offset=40
    local.set 28
    local.get 6
    f64.load offset=48
    local.set 29
    local.get 26
    local.get 28
    f64.add
    local.set 30
    local.get 27
    local.get 29
    f64.add
    local.set 31
    local.get 6
    local.get 30
    f64.store offset=24
    local.get 6
    local.get 31
    f64.store offset=32
    local.get 6
    f64.load offset=24
    local.set 32
    local.get 6
    i32.load offset=76
    local.set 9
    local.get 9
    local.get 32
    f64.store
    local.get 6
    f64.load offset=24
    local.set 33
    local.get 6
    f64.load offset=32
    local.set 34
    local.get 6
    local.get 33
    f64.store offset=8
    local.get 6
    local.get 34
    f64.store offset=16
    local.get 6
    f64.load offset=16
    local.set 35
    local.get 6
    i32.load offset=76
    local.set 10
    local.get 10
    local.get 35
    f64.store offset=8
    local.get 6
    i32.load offset=76
    local.set 11
    local.get 11
    return)
  (func (;2;) (type 1) (param f64 f64 f64 f64) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
    global.get 0
    local.set 4
    i32.const 112
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    local.get 0
    f64.store offset=104
    local.get 6
    local.get 1
    f64.store offset=96
    local.get 6
    local.get 2
    f64.store offset=88
    local.get 6
    local.get 3
    f64.store offset=80
    local.get 6
    f64.load offset=104
    local.set 12
    local.get 6
    f64.load offset=96
    local.set 13
    i32.const 0
    local.set 7
    local.get 7
    f64.convert_i32_s
    local.set 14
    local.get 13
    local.get 14
    f64.mul
    local.set 15
    f64.const 0x1p+0 (;=1;)
    local.set 16
    local.get 13
    local.get 16
    f64.mul
    local.set 17
    local.get 12
    local.get 15
    f64.add
    local.set 18
    local.get 6
    local.get 18
    f64.store offset=56
    local.get 6
    local.get 17
    f64.store offset=64
    local.get 6
    f64.load offset=88
    local.set 19
    local.get 6
    f64.load offset=80
    local.set 20
    i32.const 0
    local.set 8
    local.get 8
    f64.convert_i32_s
    local.set 21
    local.get 20
    local.get 21
    f64.mul
    local.set 22
    f64.const 0x1p+0 (;=1;)
    local.set 23
    local.get 20
    local.get 23
    f64.mul
    local.set 24
    local.get 19
    local.get 22
    f64.add
    local.set 25
    local.get 6
    local.get 25
    f64.store offset=40
    local.get 6
    local.get 24
    f64.store offset=48
    local.get 6
    f64.load offset=56
    local.set 26
    local.get 6
    f64.load offset=64
    local.set 27
    local.get 6
    f64.load offset=40
    local.set 28
    local.get 6
    f64.load offset=48
    local.set 29
    local.get 26
    local.get 28
    f64.sub
    local.set 30
    local.get 27
    local.get 29
    f64.sub
    local.set 31
    local.get 6
    local.get 30
    f64.store offset=24
    local.get 6
    local.get 31
    f64.store offset=32
    local.get 6
    f64.load offset=24
    local.set 32
    local.get 6
    i32.load offset=76
    local.set 9
    local.get 9
    local.get 32
    f64.store
    local.get 6
    f64.load offset=24
    local.set 33
    local.get 6
    f64.load offset=32
    local.set 34
    local.get 6
    local.get 33
    f64.store offset=8
    local.get 6
    local.get 34
    f64.store offset=16
    local.get 6
    f64.load offset=16
    local.set 35
    local.get 6
    i32.load offset=76
    local.set 10
    local.get 10
    local.get 35
    f64.store offset=8
    local.get 6
    i32.load offset=76
    local.set 11
    local.get 11
    return)
  (func (;3;) (type 1) (param f64 f64 f64 f64) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
    global.get 0
    local.set 4
    i32.const 128
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set 0
    local.get 6
    local.get 0
    f64.store offset=120
    local.get 6
    local.get 1
    f64.store offset=112
    local.get 6
    local.get 2
    f64.store offset=104
    local.get 6
    local.get 3
    f64.store offset=96
    local.get 6
    f64.load offset=120
    local.set 21
    local.get 6
    f64.load offset=112
    local.set 22
    f64.const 0x0p+0 (;=0;)
    local.set 23
    local.get 22
    local.get 23
    f64.mul
    local.set 24
    local.get 21
    local.get 24
    f64.add
    local.set 25
    local.get 6
    local.get 25
    f64.store offset=72
    local.get 6
    local.get 22
    f64.store offset=80
    local.get 6
    f64.load offset=104
    local.set 26
    local.get 6
    f64.load offset=96
    local.set 27
    local.get 27
    local.get 23
    f64.mul
    local.set 28
    local.get 26
    local.get 28
    f64.add
    local.set 29
    local.get 6
    local.get 29
    f64.store offset=56
    local.get 6
    local.get 27
    f64.store offset=64
    local.get 6
    f64.load offset=72
    local.set 30
    local.get 6
    f64.load offset=80
    local.set 31
    local.get 6
    f64.load offset=56
    local.set 32
    local.get 6
    f64.load offset=64
    local.set 33
    local.get 30
    local.get 32
    f64.mul
    local.set 34
    local.get 31
    local.get 33
    f64.mul
    local.set 35
    local.get 30
    local.get 33
    f64.mul
    local.set 36
    local.get 31
    local.get 32
    f64.mul
    local.set 37
    local.get 34
    local.get 35
    f64.sub
    local.set 38
    local.get 36
    local.get 37
    f64.add
    local.set 39
    local.get 38
    local.get 38
    f64.ne
    local.set 7
    i32.const 1
    local.set 8
    local.get 7
    local.get 8
    i32.and
    local.set 9
    local.get 38
    local.set 40
    local.get 39
    local.set 41
    block  ;; label = @1
      local.get 9
      i32.eqz
      br_if 0 (;@1;)
      local.get 39
      local.get 39
      f64.ne
      local.set 10
      i32.const 1
      local.set 11
      local.get 10
      local.get 11
      i32.and
      local.set 12
      local.get 38
      local.set 40
      local.get 39
      local.set 41
      local.get 12
      i32.eqz
      br_if 0 (;@1;)
      i32.const 24
      local.set 13
      local.get 6
      local.get 13
      i32.add
      local.set 14
      local.get 14
      local.set 15
      local.get 15
      local.get 30
      local.get 31
      local.get 32
      local.get 33
      call 6
      local.get 6
      f64.load offset=24
      local.set 42
      local.get 6
      f64.load offset=32
      local.set 43
      local.get 42
      local.set 40
      local.get 43
      local.set 41
    end
    local.get 41
    local.set 44
    local.get 40
    local.set 45
    local.get 6
    local.get 45
    f64.store offset=40
    local.get 6
    local.get 44
    f64.store offset=48
    local.get 6
    f64.load offset=40
    local.set 46
    local.get 6
    i32.load offset=92
    local.set 16
    local.get 16
    local.get 46
    f64.store
    local.get 6
    f64.load offset=40
    local.set 47
    local.get 6
    f64.load offset=48
    local.set 48
    local.get 6
    local.get 47
    f64.store offset=8
    local.get 6
    local.get 48
    f64.store offset=16
    local.get 6
    f64.load offset=16
    local.set 49
    local.get 6
    i32.load offset=92
    local.set 17
    local.get 17
    local.get 49
    f64.store offset=8
    local.get 6
    i32.load offset=92
    local.set 18
    i32.const 128
    local.set 19
    local.get 6
    local.get 19
    i32.add
    local.set 20
    local.get 20
    global.set 0
    local.get 18
    return)
  (func (;4;) (type 1) (param f64 f64 f64 f64) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
    global.get 0
    local.set 4
    i32.const 128
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set 0
    local.get 6
    local.get 0
    f64.store offset=120
    local.get 6
    local.get 1
    f64.store offset=112
    local.get 6
    local.get 2
    f64.store offset=104
    local.get 6
    local.get 3
    f64.store offset=96
    local.get 6
    f64.load offset=120
    local.set 17
    local.get 6
    f64.load offset=112
    local.set 18
    i32.const 0
    local.set 7
    local.get 7
    f64.convert_i32_s
    local.set 19
    local.get 18
    local.get 19
    f64.mul
    local.set 20
    f64.const 0x1p+0 (;=1;)
    local.set 21
    local.get 18
    local.get 21
    f64.mul
    local.set 22
    local.get 17
    local.get 20
    f64.add
    local.set 23
    local.get 6
    local.get 23
    f64.store offset=72
    local.get 6
    local.get 22
    f64.store offset=80
    local.get 6
    f64.load offset=104
    local.set 24
    local.get 6
    f64.load offset=96
    local.set 25
    i32.const 0
    local.set 8
    local.get 8
    f64.convert_i32_s
    local.set 26
    local.get 25
    local.get 26
    f64.mul
    local.set 27
    f64.const 0x1p+0 (;=1;)
    local.set 28
    local.get 25
    local.get 28
    f64.mul
    local.set 29
    local.get 24
    local.get 27
    f64.add
    local.set 30
    local.get 6
    local.get 30
    f64.store offset=56
    local.get 6
    local.get 29
    f64.store offset=64
    local.get 6
    f64.load offset=72
    local.set 31
    local.get 6
    f64.load offset=80
    local.set 32
    local.get 6
    f64.load offset=56
    local.set 33
    local.get 6
    f64.load offset=64
    local.set 34
    i32.const 24
    local.set 9
    local.get 6
    local.get 9
    i32.add
    local.set 10
    local.get 10
    local.set 11
    local.get 11
    local.get 31
    local.get 32
    local.get 33
    local.get 34
    call 5
    local.get 6
    f64.load offset=24
    local.set 35
    local.get 6
    f64.load offset=32
    local.set 36
    local.get 6
    local.get 35
    f64.store offset=40
    local.get 6
    local.get 36
    f64.store offset=48
    local.get 6
    f64.load offset=40
    local.set 37
    local.get 6
    i32.load offset=92
    local.set 12
    local.get 12
    local.get 37
    f64.store
    local.get 6
    f64.load offset=40
    local.set 38
    local.get 6
    f64.load offset=48
    local.set 39
    local.get 6
    local.get 38
    f64.store offset=8
    local.get 6
    local.get 39
    f64.store offset=16
    local.get 6
    f64.load offset=16
    local.set 40
    local.get 6
    i32.load offset=92
    local.set 13
    local.get 13
    local.get 40
    f64.store offset=8
    local.get 6
    i32.load offset=92
    local.set 14
    i32.const 128
    local.set 15
    local.get 6
    local.get 15
    i32.add
    local.set 16
    local.get 16
    global.set 0
    local.get 14
    return)
  (func (;5;) (type 3) (param i32 f64 f64 f64 f64)
    (local f64 f64 f64 f64 f64 f64 f64 f64 i64 i64 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        f64.abs
        local.tee 5
        local.get 5
        local.get 3
        f64.abs
        local.tee 6
        local.get 6
        local.get 5
        f64.lt
        select
        local.get 3
        local.get 3
        f64.ne
        select
        local.tee 5
        i64.reinterpret_f64
        local.tee 13
        i64.const 52
        i64.shr_u
        i32.wrap_i64
        i32.const 2047
        i32.and
        local.tee 15
        i32.const 2047
        i32.ne
        br_if 0 (;@2;)
        local.get 5
        local.get 5
        local.get 5
        f64.neg
        local.get 13
        i64.const -1
        i64.gt_s
        select
        local.get 5
        local.get 5
        f64.ne
        select
        local.set 7
        br 1 (;@1;)
      end
      f64.const -inf (;=-inf;)
      local.set 7
      local.get 5
      f64.const 0x0p+0 (;=0;)
      f64.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 15
        i32.eqz
        br_if 0 (;@2;)
        local.get 15
        i32.const -1023
        i32.add
        f64.convert_i32_s
        local.set 7
        br 1 (;@1;)
      end
      local.get 13
      local.get 13
      i32.wrap_i64
      i32.clz
      i32.const 32
      i32.add
      local.get 13
      i64.const 9223372036854775807
      i64.and
      local.tee 14
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      i32.clz
      local.get 14
      i64.const 4294967296
      i64.lt_u
      select
      local.tee 15
      i32.const -11
      i32.add
      i64.extend_i32_u
      i64.shl
      i64.const 52
      i64.shr_u
      i32.wrap_i64
      i32.const 2047
      i32.and
      local.get 15
      i32.sub
      i32.const -1012
      i32.add
      f64.convert_i32_s
      local.set 7
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 7
        f64.abs
        local.tee 8
        f64.const inf (;=inf;)
        f64.gt
        local.get 8
        f64.const inf (;=inf;)
        f64.lt
        i32.or
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        i32.const 0
        local.set 15
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 8
          f64.const 0x1p+31 (;=2.14748e+09;)
          f64.lt
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          i32.trunc_f64_s
          local.set 15
          br 1 (;@2;)
        end
        i32.const -2147483648
        local.set 15
      end
      i32.const 0
      local.get 15
      i32.sub
      local.set 16
      block  ;; label = @2
        local.get 3
        f64.const 0x0p+0 (;=0;)
        f64.eq
        br_if 0 (;@2;)
        local.get 3
        i64.reinterpret_f64
        local.tee 13
        i64.const 52
        i64.shr_u
        i32.wrap_i64
        i32.const 2047
        i32.and
        local.tee 17
        i32.const 2047
        i32.eq
        br_if 0 (;@2;)
        local.get 13
        i64.const 4503599627370495
        i64.and
        local.set 14
        block  ;; label = @3
          local.get 17
          br_if 0 (;@3;)
          i32.const 12
          local.get 13
          i32.wrap_i64
          i32.clz
          i32.const 32
          i32.add
          local.get 14
          i64.const 32
          i64.shr_u
          i32.wrap_i64
          i32.clz
          local.get 14
          i64.const 4294967296
          i64.lt_u
          select
          local.tee 18
          i32.sub
          local.set 17
          local.get 14
          local.get 18
          i32.const -11
          i32.add
          i64.extend_i32_u
          i64.shl
          i64.const -4503599627370497
          i64.and
          local.set 14
        end
        local.get 13
        i64.const -9223372036854775808
        i64.and
        local.set 13
        block  ;; label = @3
          local.get 17
          local.get 16
          i32.add
          local.tee 18
          i32.const 31
          i32.shr_s
          i32.const -2147483648
          i32.xor
          local.get 18
          local.get 16
          i32.const 0
          i32.lt_s
          local.get 18
          local.get 17
          i32.lt_s
          i32.xor
          select
          local.tee 17
          i32.const 2047
          i32.lt_s
          br_if 0 (;@3;)
          local.get 13
          i64.const 9214364837600034816
          i64.or
          f64.reinterpret_i64
          local.tee 3
          local.get 3
          f64.add
          local.set 3
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 17
          i32.const 0
          i32.gt_s
          br_if 0 (;@3;)
          local.get 14
          local.get 13
          i64.or
          i64.const 4503599627370496
          i64.or
          f64.reinterpret_i64
          local.get 17
          i32.const -1021
          local.get 17
          i32.const -1021
          i32.gt_s
          select
          i32.const 1022
          i32.add
          i64.extend_i32_u
          i64.const 52
          i64.shl
          f64.reinterpret_i64
          f64.mul
          local.set 3
          br 1 (;@2;)
        end
        local.get 17
        i64.extend_i32_u
        i64.const 52
        i64.shl
        local.get 13
        i64.or
        local.get 14
        i64.or
        f64.reinterpret_i64
        local.set 3
      end
      local.get 4
      f64.const 0x0p+0 (;=0;)
      f64.eq
      br_if 0 (;@1;)
      local.get 4
      i64.reinterpret_f64
      local.tee 13
      i64.const 52
      i64.shr_u
      i32.wrap_i64
      i32.const 2047
      i32.and
      local.tee 17
      i32.const 2047
      i32.eq
      br_if 0 (;@1;)
      local.get 13
      i64.const 4503599627370495
      i64.and
      local.set 14
      block  ;; label = @2
        local.get 17
        br_if 0 (;@2;)
        i32.const 12
        local.get 13
        i32.wrap_i64
        i32.clz
        i32.const 32
        i32.add
        local.get 14
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        i32.clz
        local.get 14
        i64.const 4294967296
        i64.lt_u
        select
        local.tee 18
        i32.sub
        local.set 17
        local.get 14
        local.get 18
        i32.const -11
        i32.add
        i64.extend_i32_u
        i64.shl
        i64.const -4503599627370497
        i64.and
        local.set 14
      end
      local.get 13
      i64.const -9223372036854775808
      i64.and
      local.set 13
      block  ;; label = @2
        local.get 17
        local.get 16
        i32.add
        local.tee 18
        i32.const 31
        i32.shr_s
        i32.const -2147483648
        i32.xor
        local.get 18
        local.get 16
        i32.const 0
        i32.lt_s
        local.get 18
        local.get 17
        i32.lt_s
        i32.xor
        select
        local.tee 16
        i32.const 2047
        i32.lt_s
        br_if 0 (;@2;)
        local.get 13
        i64.const 9214364837600034816
        i64.or
        f64.reinterpret_i64
        local.tee 4
        local.get 4
        f64.add
        local.set 4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 16
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
        local.get 14
        local.get 13
        i64.or
        i64.const 4503599627370496
        i64.or
        f64.reinterpret_i64
        local.get 16
        i32.const -1021
        local.get 16
        i32.const -1021
        i32.gt_s
        select
        i32.const 1022
        i32.add
        i64.extend_i32_u
        i64.const 52
        i64.shl
        f64.reinterpret_i64
        f64.mul
        local.set 4
        br 1 (;@1;)
      end
      local.get 16
      i64.extend_i32_u
      i64.const 52
      i64.shl
      local.get 13
      i64.or
      local.get 14
      i64.or
      f64.reinterpret_i64
      local.set 4
    end
    i32.const 0
    local.get 15
    i32.sub
    local.set 15
    block  ;; label = @1
      local.get 1
      local.get 3
      f64.mul
      local.get 4
      local.get 2
      f64.mul
      f64.add
      local.get 3
      local.get 3
      f64.mul
      local.get 4
      local.get 4
      f64.mul
      f64.add
      local.tee 9
      f64.div
      local.tee 5
      f64.const 0x0p+0 (;=0;)
      f64.eq
      br_if 0 (;@1;)
      local.get 5
      i64.reinterpret_f64
      local.tee 13
      i64.const 52
      i64.shr_u
      i32.wrap_i64
      i32.const 2047
      i32.and
      local.tee 16
      i32.const 2047
      i32.eq
      br_if 0 (;@1;)
      local.get 13
      i64.const 4503599627370495
      i64.and
      local.set 14
      block  ;; label = @2
        local.get 16
        br_if 0 (;@2;)
        i32.const 12
        local.get 13
        i32.wrap_i64
        i32.clz
        i32.const 32
        i32.add
        local.get 14
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        i32.clz
        local.get 14
        i64.const 4294967296
        i64.lt_u
        select
        local.tee 17
        i32.sub
        local.set 16
        local.get 14
        local.get 17
        i32.const -11
        i32.add
        i64.extend_i32_u
        i64.shl
        i64.const -4503599627370497
        i64.and
        local.set 14
      end
      local.get 13
      i64.const -9223372036854775808
      i64.and
      local.set 13
      block  ;; label = @2
        local.get 16
        local.get 15
        i32.add
        local.tee 17
        i32.const 31
        i32.shr_s
        i32.const -2147483648
        i32.xor
        local.get 17
        local.get 15
        i32.const 0
        i32.lt_s
        local.get 17
        local.get 16
        i32.lt_s
        i32.xor
        select
        local.tee 16
        i32.const 2047
        i32.lt_s
        br_if 0 (;@2;)
        local.get 13
        i64.const 9214364837600034816
        i64.or
        f64.reinterpret_i64
        local.tee 5
        local.get 5
        f64.add
        local.set 5
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 16
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
        local.get 14
        local.get 13
        i64.or
        i64.const 4503599627370496
        i64.or
        f64.reinterpret_i64
        local.get 16
        i32.const -1021
        local.get 16
        i32.const -1021
        i32.gt_s
        select
        i32.const 1022
        i32.add
        i64.extend_i32_u
        i64.const 52
        i64.shl
        f64.reinterpret_i64
        f64.mul
        local.set 5
        br 1 (;@1;)
      end
      local.get 16
      i64.extend_i32_u
      i64.const 52
      i64.shl
      local.get 13
      i64.or
      local.get 14
      i64.or
      f64.reinterpret_i64
      local.set 5
    end
    block  ;; label = @1
      local.get 2
      local.get 3
      f64.mul
      local.get 4
      local.get 1
      f64.mul
      f64.sub
      local.get 9
      f64.div
      local.tee 6
      f64.const 0x0p+0 (;=0;)
      f64.eq
      br_if 0 (;@1;)
      local.get 6
      i64.reinterpret_f64
      local.tee 13
      i64.const 52
      i64.shr_u
      i32.wrap_i64
      i32.const 2047
      i32.and
      local.tee 16
      i32.const 2047
      i32.eq
      br_if 0 (;@1;)
      local.get 13
      i64.const 4503599627370495
      i64.and
      local.set 14
      block  ;; label = @2
        local.get 16
        br_if 0 (;@2;)
        i32.const 12
        local.get 13
        i32.wrap_i64
        i32.clz
        i32.const 32
        i32.add
        local.get 14
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        i32.clz
        local.get 14
        i64.const 4294967296
        i64.lt_u
        select
        local.tee 17
        i32.sub
        local.set 16
        local.get 14
        local.get 17
        i32.const -11
        i32.add
        i64.extend_i32_u
        i64.shl
        i64.const -4503599627370497
        i64.and
        local.set 14
      end
      local.get 13
      i64.const -9223372036854775808
      i64.and
      local.set 13
      block  ;; label = @2
        local.get 16
        local.get 15
        i32.add
        local.tee 17
        i32.const 31
        i32.shr_s
        i32.const -2147483648
        i32.xor
        local.get 17
        local.get 15
        i32.const 0
        i32.lt_s
        local.get 17
        local.get 16
        i32.lt_s
        i32.xor
        select
        local.tee 15
        i32.const 2047
        i32.lt_s
        br_if 0 (;@2;)
        local.get 13
        i64.const 9214364837600034816
        i64.or
        f64.reinterpret_i64
        local.tee 6
        local.get 6
        f64.add
        local.set 6
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 15
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
        local.get 14
        local.get 13
        i64.or
        i64.const 4503599627370496
        i64.or
        f64.reinterpret_i64
        local.get 15
        i32.const -1021
        local.get 15
        i32.const -1021
        i32.gt_s
        select
        i32.const 1022
        i32.add
        i64.extend_i32_u
        i64.const 52
        i64.shl
        f64.reinterpret_i64
        f64.mul
        local.set 6
        br 1 (;@1;)
      end
      local.get 15
      i64.extend_i32_u
      i64.const 52
      i64.shl
      local.get 13
      i64.or
      local.get 14
      i64.or
      f64.reinterpret_i64
      local.set 6
    end
    block  ;; label = @1
      local.get 5
      local.get 5
      f64.eq
      br_if 0 (;@1;)
      local.get 6
      local.get 6
      f64.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 9
        f64.const 0x0p+0 (;=0;)
        f64.ne
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 1
          local.get 1
          f64.eq
          br_if 0 (;@3;)
          local.get 2
          local.get 2
          f64.ne
          br_if 1 (;@2;)
        end
        f64.const inf (;=inf;)
        local.get 3
        f64.copysign
        local.tee 3
        local.get 2
        f64.mul
        local.set 6
        local.get 3
        local.get 1
        f64.mul
        local.set 5
        br 1 (;@1;)
      end
      local.get 4
      f64.abs
      local.set 10
      local.get 3
      f64.abs
      local.set 9
      block  ;; label = @2
        local.get 1
        f64.abs
        local.tee 11
        f64.const inf (;=inf;)
        f64.eq
        local.get 2
        f64.abs
        local.tee 12
        f64.const inf (;=inf;)
        f64.eq
        i32.or
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 9
        f64.const inf (;=inf;)
        f64.gt
        local.get 9
        f64.const inf (;=inf;)
        f64.lt
        i32.or
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 10
        f64.const inf (;=inf;)
        f64.gt
        local.get 10
        f64.const inf (;=inf;)
        f64.lt
        i32.or
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        f64.const 0x1p+0 (;=1;)
        f64.const 0x0p+0 (;=0;)
        local.get 12
        f64.const inf (;=inf;)
        f64.eq
        select
        local.get 2
        f64.copysign
        local.tee 5
        local.get 3
        f64.mul
        local.get 4
        f64.const 0x1p+0 (;=1;)
        f64.const 0x0p+0 (;=0;)
        local.get 11
        f64.const inf (;=inf;)
        f64.eq
        select
        local.get 1
        f64.copysign
        local.tee 1
        f64.mul
        f64.sub
        f64.const inf (;=inf;)
        f64.mul
        local.set 6
        local.get 1
        local.get 3
        f64.mul
        local.get 5
        local.get 4
        f64.mul
        f64.add
        f64.const inf (;=inf;)
        f64.mul
        local.set 5
        br 1 (;@1;)
      end
      local.get 8
      f64.const inf (;=inf;)
      f64.ne
      br_if 0 (;@1;)
      local.get 7
      f64.const 0x0p+0 (;=0;)
      f64.gt
      i32.eqz
      br_if 0 (;@1;)
      local.get 11
      f64.const inf (;=inf;)
      f64.gt
      local.get 11
      f64.const inf (;=inf;)
      f64.lt
      i32.or
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 12
      f64.const inf (;=inf;)
      f64.gt
      local.get 12
      f64.const inf (;=inf;)
      f64.lt
      i32.or
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      f64.const 0x1p+0 (;=1;)
      f64.const 0x0p+0 (;=0;)
      local.get 9
      f64.const inf (;=inf;)
      f64.eq
      select
      local.get 3
      f64.copysign
      local.tee 3
      f64.mul
      f64.const 0x1p+0 (;=1;)
      f64.const 0x0p+0 (;=0;)
      local.get 10
      f64.const inf (;=inf;)
      f64.eq
      select
      local.get 4
      f64.copysign
      local.tee 4
      local.get 1
      f64.mul
      f64.sub
      f64.const 0x0p+0 (;=0;)
      f64.mul
      local.set 6
      local.get 1
      local.get 3
      f64.mul
      local.get 4
      local.get 2
      f64.mul
      f64.add
      f64.const 0x0p+0 (;=0;)
      f64.mul
      local.set 5
    end
    local.get 0
    local.get 6
    f64.store offset=8
    local.get 0
    local.get 5
    f64.store)
  (func (;6;) (type 3) (param i32 f64 f64 f64 f64)
    (local f64 f64 f64 f64 f64 f64 f64 f64 i32 i32 i32)
    local.get 2
    local.get 3
    f64.mul
    local.tee 5
    local.get 1
    local.get 4
    f64.mul
    local.tee 6
    f64.add
    local.set 7
    block  ;; label = @1
      local.get 1
      local.get 3
      f64.mul
      local.tee 8
      local.get 2
      local.get 4
      f64.mul
      local.tee 9
      f64.sub
      local.tee 10
      local.get 10
      f64.eq
      br_if 0 (;@1;)
      local.get 7
      local.get 7
      f64.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        f64.abs
        f64.const inf (;=inf;)
        f64.eq
        local.tee 13
        local.get 2
        f64.abs
        f64.const inf (;=inf;)
        f64.eq
        local.tee 14
        i32.or
        local.tee 15
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        f64.const 0x0p+0 (;=0;)
        local.get 4
        f64.copysign
        local.get 4
        local.get 4
        local.get 4
        f64.ne
        select
        local.set 4
        f64.const 0x0p+0 (;=0;)
        local.get 3
        f64.copysign
        local.get 3
        local.get 3
        local.get 3
        f64.ne
        select
        local.set 3
        f64.const 0x1p+0 (;=1;)
        f64.const 0x0p+0 (;=0;)
        local.get 14
        select
        local.get 2
        f64.copysign
        local.set 2
        f64.const 0x1p+0 (;=1;)
        f64.const 0x0p+0 (;=0;)
        local.get 13
        select
        local.get 1
        f64.copysign
        local.set 1
      end
      local.get 4
      f64.abs
      local.set 11
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            f64.abs
            local.tee 12
            f64.const inf (;=inf;)
            f64.eq
            br_if 0 (;@4;)
            local.get 11
            f64.const inf (;=inf;)
            f64.ne
            br_if 1 (;@3;)
          end
          f64.const 0x0p+0 (;=0;)
          local.get 2
          f64.copysign
          local.get 2
          local.get 2
          local.get 2
          f64.ne
          select
          local.set 2
          f64.const 0x0p+0 (;=0;)
          local.get 1
          f64.copysign
          local.get 1
          local.get 1
          local.get 1
          f64.ne
          select
          local.set 1
          f64.const 0x1p+0 (;=1;)
          f64.const 0x0p+0 (;=0;)
          local.get 11
          f64.const inf (;=inf;)
          f64.eq
          select
          local.get 4
          f64.copysign
          local.set 4
          f64.const 0x1p+0 (;=1;)
          f64.const 0x0p+0 (;=0;)
          local.get 12
          f64.const inf (;=inf;)
          f64.eq
          select
          local.get 3
          f64.copysign
          local.set 3
          br 1 (;@2;)
        end
        local.get 15
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 8
          f64.abs
          f64.const inf (;=inf;)
          f64.eq
          br_if 0 (;@3;)
          local.get 9
          f64.abs
          f64.const inf (;=inf;)
          f64.eq
          br_if 0 (;@3;)
          local.get 6
          f64.abs
          f64.const inf (;=inf;)
          f64.eq
          br_if 0 (;@3;)
          local.get 5
          f64.abs
          f64.const inf (;=inf;)
          f64.ne
          br_if 2 (;@1;)
        end
        f64.const 0x0p+0 (;=0;)
        local.get 4
        f64.copysign
        local.get 4
        local.get 4
        local.get 4
        f64.ne
        select
        local.set 4
        f64.const 0x0p+0 (;=0;)
        local.get 3
        f64.copysign
        local.get 3
        local.get 3
        local.get 3
        f64.ne
        select
        local.set 3
        f64.const 0x0p+0 (;=0;)
        local.get 2
        f64.copysign
        local.get 2
        local.get 2
        local.get 2
        f64.ne
        select
        local.set 2
        f64.const 0x0p+0 (;=0;)
        local.get 1
        f64.copysign
        local.get 1
        local.get 1
        local.get 1
        f64.ne
        select
        local.set 1
      end
      local.get 1
      local.get 4
      f64.mul
      local.get 3
      local.get 2
      f64.mul
      f64.add
      f64.const inf (;=inf;)
      f64.mul
      local.set 7
      local.get 1
      local.get 3
      f64.mul
      local.get 4
      local.get 2
      f64.mul
      f64.sub
      f64.const inf (;=inf;)
      f64.mul
      local.set 10
    end
    local.get 0
    local.get 7
    f64.store offset=8
    local.get 0
    local.get 10
    f64.store)
  (func (;7;) (type 0) (result i32)
    global.get 0)
  (func (;8;) (type 4) (param i32)
    local.get 0
    global.set 0)
  (func (;9;) (type 5) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 1
    global.set 0
    local.get 1)
  (func (;10;) (type 2)
    i32.const 5243920
    global.set 2
    i32.const 1028
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    global.set 1)
  (func (;11;) (type 0) (result i32)
    global.get 0
    global.get 1
    i32.sub)
  (func (;12;) (type 0) (result i32)
    global.get 2)
  (func (;13;) (type 0) (result i32)
    global.get 1)
  (func (;14;) (type 0) (result i32)
    i32.const 1024)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 5243920))
  (global (;1;) (mut i32) (i32.const 0))
  (global (;2;) (mut i32) (i32.const 0))
  (export "memory" (memory 0))
  (export "cadd" (func 1))
  (export "csub" (func 2))
  (export "cmul" (func 3))
  (export "cdiv" (func 4))
  (export "__indirect_function_table" (table 0))
  (export "__errno_location" (func 14))
  (export "emscripten_stack_init" (func 10))
  (export "emscripten_stack_get_free" (func 11))
  (export "emscripten_stack_get_base" (func 12))
  (export "emscripten_stack_get_end" (func 13))
  (export "stackSave" (func 7))
  (export "stackRestore" (func 8))
  (export "stackAlloc" (func 9)))
