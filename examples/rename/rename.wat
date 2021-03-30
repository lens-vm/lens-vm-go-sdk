(module
  (type (;0;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func))
  (type (;5;) (func (param i32 i32)))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (param i32 i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32) (result i32)))
  (import "wasi_unstable" "fd_write" (func $runtime.fd_write (type 0)))
  (import "env" "lensvm_exec_hoist" (func $lensvm_exec_hoist (type 1)))
  (func $runtime.alloc (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 15
      i32.add
      i32.const 4
      i32.shr_u
      local.set 1
      i32.const 0
      i32.load offset=65752
      local.tee 2
      local.set 3
      i32.const 0
      local.set 4
      i32.const 0
      local.set 5
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            local.get 2
            i32.ne
            br_if 0 (;@4;)
            i32.const 1
            local.set 6
            block  ;; label = @5
              block  ;; label = @6
                local.get 5
                i32.const 255
                i32.and
                br_table 3 (;@3;) 0 (;@6;) 1 (;@5;)
              end
              i32.const 0
              i32.load offset=65896
              local.set 2
              block  ;; label = @6
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 5
                    i32.const 0
                    local.set 6
                    loop  ;; label = @9
                      local.get 6
                      i32.const 0
                      i32.load offset=65696
                      i32.ge_u
                      br_if 3 (;@6;)
                      block  ;; label = @10
                        local.get 6
                        i32.const 3
                        i32.shr_u
                        i32.const 65736
                        i32.add
                        i32.load8_u
                        local.get 6
                        i32.const 7
                        i32.and
                        i32.shr_u
                        i32.const 1
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 5
                        i32.const 0
                        i32.load offset=65700
                        i32.add
                        i32.load
                        call $runtime.markRoot
                      end
                      local.get 5
                      i32.const 4
                      i32.add
                      local.set 5
                      local.get 6
                      i32.const 1
                      i32.add
                      local.set 6
                      br 0 (;@9;)
                    end
                  end
                  local.get 2
                  i32.const 8
                  i32.add
                  local.set 5
                  local.get 2
                  i32.load offset=4
                  i32.const 2
                  i32.shl
                  local.set 6
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 6
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 5
                      i32.load
                      call $runtime.markRoot
                      local.get 6
                      i32.const -4
                      i32.add
                      local.set 6
                      local.get 5
                      i32.const 4
                      i32.add
                      local.set 5
                      br 0 (;@9;)
                    end
                  end
                  local.get 2
                  i32.load
                  local.set 2
                  br 0 (;@7;)
                end
              end
              loop  ;; label = @6
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=65760
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 5
                  i32.const 0
                  local.set 6
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 6
                      i32.const 0
                      i32.load offset=65756
                      i32.lt_u
                      br_if 0 (;@9;)
                      i32.const 2
                      local.set 6
                      br 6 (;@3;)
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 6
                            call $_runtime.gcBlock_.state
                            i32.const 255
                            i32.and
                            i32.const -1
                            i32.add
                            br_table 1 (;@11;) 0 (;@12;) 2 (;@10;) 3 (;@9;)
                          end
                          local.get 5
                          i32.const 1
                          i32.and
                          local.set 2
                          i32.const 0
                          local.set 5
                          local.get 2
                          i32.eqz
                          br_if 2 (;@9;)
                        end
                        local.get 6
                        call $_runtime.gcBlock_.markFree
                        i32.const 1
                        local.set 5
                        br 1 (;@9;)
                      end
                      i32.const 0
                      local.set 5
                      i32.const 0
                      i32.load offset=65716
                      local.get 6
                      i32.const 2
                      i32.shr_u
                      i32.add
                      local.tee 2
                      local.get 2
                      i32.load8_u
                      i32.const 2
                      local.get 6
                      i32.const 1
                      i32.shl
                      i32.const 6
                      i32.and
                      i32.shl
                      i32.const -1
                      i32.xor
                      i32.and
                      i32.store8
                    end
                    local.get 6
                    i32.const 1
                    i32.add
                    local.set 6
                    br 0 (;@8;)
                  end
                end
                i32.const 0
                local.set 6
                i32.const 0
                i32.const 0
                i32.store8 offset=65760
                loop  ;; label = @7
                  local.get 6
                  i32.const 0
                  i32.load offset=65756
                  i32.ge_u
                  br_if 1 (;@6;)
                  block  ;; label = @8
                    local.get 6
                    call $_runtime.gcBlock_.state
                    i32.const 255
                    i32.and
                    i32.const 3
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 6
                    call $runtime.startMark
                  end
                  local.get 6
                  i32.const 1
                  i32.add
                  local.set 6
                  br 0 (;@7;)
                end
              end
            end
            block  ;; label = @5
              memory.size
              memory.grow
              i32.const -1
              i32.eq
              br_if 0 (;@5;)
              memory.size
              local.set 6
              i32.const 0
              i32.load offset=65744
              local.set 2
              i32.const 0
              local.get 6
              i32.const 16
              i32.shl
              i32.store offset=65744
              i32.const 0
              i32.load offset=65716
              local.set 6
              call $runtime.calculateHeapAddresses
              i32.const 0
              i32.load offset=65716
              local.get 6
              local.get 2
              local.get 6
              i32.sub
              call $memcpy
              drop
              br 1 (;@4;)
            end
            i32.const 65573
            i32.const 13
            call $runtime.runtimePanic
          end
          local.get 5
          local.set 6
        end
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            local.get 3
            local.get 3
            i32.const 0
            i32.load offset=65756
            i32.eq
            local.tee 2
            select
            local.tee 5
            call $_runtime.gcBlock_.state
            i32.const 255
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i32.const 1
            i32.add
            local.set 3
            i32.const 0
            local.set 4
            br 1 (;@3;)
          end
          local.get 5
          i32.const 1
          i32.add
          local.set 3
          i32.const 1
          local.get 4
          i32.const 1
          i32.add
          local.get 2
          select
          local.tee 4
          local.get 1
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          local.get 3
          i32.store offset=65752
          local.get 3
          local.get 1
          i32.sub
          local.tee 2
          i32.const 1
          call $_runtime.gcBlock_.setState
          local.get 5
          local.get 1
          i32.sub
          i32.const 2
          i32.add
          local.set 6
          block  ;; label = @4
            loop  ;; label = @5
              local.get 6
              i32.const 0
              i32.load offset=65752
              i32.eq
              br_if 1 (;@4;)
              local.get 6
              i32.const 2
              call $_runtime.gcBlock_.setState
              local.get 6
              i32.const 1
              i32.add
              local.set 6
              br 0 (;@5;)
            end
          end
          local.get 2
          i32.const 4
          i32.shl
          i32.const 65912
          i32.add
          i32.const 0
          local.get 0
          call $memset
          return
        end
        i32.const 0
        i32.load offset=65752
        local.set 2
        local.get 6
        local.set 5
        br 0 (;@2;)
      end
    end
    i32.const 65748)
  (func $runtime.markRoot (type 3) (param i32)
    block  ;; label = @1
      local.get 0
      call $runtime.looksLikePointer
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 65912
      i32.sub
      i32.const 4
      i32.shr_u
      local.tee 0
      call $_runtime.gcBlock_.state
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call $_runtime.gcBlock_.findHead
      local.tee 0
      call $_runtime.gcBlock_.state
      i32.const 255
      i32.and
      i32.const 3
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      call $runtime.startMark
    end)
  (func $_runtime.gcBlock_.state (type 2) (param i32) (result i32)
    i32.const 0
    i32.load offset=65716
    local.get 0
    i32.const 2
    i32.shr_u
    i32.add
    i32.load8_u
    local.get 0
    i32.const 1
    i32.shl
    i32.const 6
    i32.and
    i32.shr_u
    i32.const 3
    i32.and)
  (func $_runtime.gcBlock_.markFree (type 3) (param i32)
    (local i32)
    i32.const 0
    i32.load offset=65716
    local.get 0
    i32.const 2
    i32.shr_u
    i32.add
    local.tee 1
    local.get 1
    i32.load8_u
    i32.const 3
    local.get 0
    i32.const 1
    i32.shl
    i32.const 6
    i32.and
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    i32.store8)
  (func $runtime.startMark (type 3) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 0
    i32.const 64
    call $memset
    local.tee 2
    local.get 0
    i32.store
    local.get 0
    i32.const 3
    call $_runtime.gcBlock_.setState
    i32.const 1
    local.set 3
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 1
            i32.lt_s
            br_if 0 (;@4;)
            local.get 3
            i32.const -1
            i32.add
            local.tee 3
            i32.const 15
            i32.le_u
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 2
          i32.const 64
          i32.add
          global.set 0
          return
        end
        local.get 2
        local.get 3
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.tee 1
        i32.const 4
        i32.shl
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            call $_runtime.gcBlock_.state
            i32.const 255
            i32.and
            i32.const 1
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            call $_runtime.gcBlock_.state
            i32.const 255
            i32.and
            i32.const 3
            i32.ne
            br_if 1 (;@3;)
          end
          local.get 1
          i32.const 1
          i32.add
          local.set 1
        end
        local.get 0
        i32.const 65912
        i32.add
        local.set 4
        local.get 1
        i32.const 4
        i32.shl
        local.tee 5
        local.get 0
        i32.sub
        local.set 6
        local.get 5
        i32.const 65896
        i32.add
        local.set 5
        loop  ;; label = @3
          local.get 6
          local.tee 0
          i32.const 16
          i32.add
          local.set 6
          local.get 5
          i32.const 16
          i32.add
          local.set 5
          local.get 1
          call $_runtime.gcBlock_.state
          local.set 7
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 7
          i32.const 255
          i32.and
          i32.const 2
          i32.eq
          br_if 0 (;@3;)
        end
        loop  ;; label = @3
          local.get 0
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 4
            i32.load
            local.tee 1
            call $runtime.looksLikePointer
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 65912
            i32.sub
            i32.const 4
            i32.shr_u
            local.tee 1
            call $_runtime.gcBlock_.state
            i32.const 255
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            call $_runtime.gcBlock_.findHead
            local.tee 1
            call $_runtime.gcBlock_.state
            i32.const 255
            i32.and
            i32.const 3
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            i32.const 3
            call $_runtime.gcBlock_.setState
            block  ;; label = @5
              local.get 3
              i32.const 16
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 1
              i32.store8 offset=65760
              i32.const 16
              local.set 3
              br 1 (;@4;)
            end
            local.get 3
            i32.const 16
            i32.ge_u
            br_if 3 (;@1;)
            local.get 2
            local.get 3
            i32.const 2
            i32.shl
            i32.add
            local.get 1
            i32.store
            local.get 3
            i32.const 1
            i32.add
            local.set 3
          end
          local.get 0
          i32.const -4
          i32.add
          local.set 0
          local.get 4
          i32.const 4
          i32.add
          local.set 4
          br 0 (;@3;)
        end
      end
    end
    call $runtime.lookupPanic
    unreachable)
  (func $runtime.calculateHeapAddresses (type 4)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=65744
    local.tee 0
    local.get 0
    i32.const 65912
    i32.sub
    i32.const 6
    i32.shr_u
    i32.sub
    local.tee 0
    i32.store offset=65716
    i32.const 0
    local.get 0
    i32.const 65912
    i32.sub
    i32.const 4
    i32.shr_u
    i32.store offset=65756)
  (func $runtime.runtimePanic (type 5) (param i32 i32)
    i32.const 65664
    i32.const 22
    call $runtime.printstring
    local.get 0
    local.get 1
    call $runtime.printstring
    call $runtime.printnl
    unreachable
    unreachable)
  (func $_runtime.gcBlock_.setState (type 5) (param i32 i32)
    (local i32)
    i32.const 0
    i32.load offset=65716
    local.get 0
    i32.const 2
    i32.shr_u
    i32.add
    local.tee 2
    local.get 2
    i32.load8_u
    local.get 1
    local.get 0
    i32.const 1
    i32.shl
    i32.const 6
    i32.and
    i32.shl
    i32.or
    i32.store8)
  (func $runtime.lookupPanic (type 4)
    i32.const 65600
    i32.const 18
    call $runtime.runtimePanic)
  (func $runtime.nilPanic (type 4)
    i32.const 65632
    i32.const 23
    call $runtime.runtimePanic)
  (func $errors.New (type 6) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 0
    i32.store offset=12
    local.get 3
    i64.const 2
    i64.store offset=4 align=4
    i32.const 0
    i32.load offset=65896
    local.set 4
    i32.const 0
    local.get 3
    i32.store offset=65896
    local.get 3
    local.get 4
    i32.store
    i32.const 8
    call $runtime.alloc
    local.tee 5
    local.get 2
    i32.store offset=4
    local.get 5
    local.get 1
    i32.store
    i32.const 0
    local.get 4
    i32.store offset=65896
    local.get 3
    local.get 5
    i32.store offset=8
    local.get 3
    local.get 5
    i32.store offset=12
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 0
    i32.const 997
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func $runtime.hashmapStringSet (type 7) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i64.const 111669149696
    i64.store offset=16
    local.get 4
    i64.const 0
    i64.store offset=24
    local.get 4
    i64.const 0
    i64.store offset=32
    local.get 4
    i64.const 0
    i64.store offset=40
    local.get 4
    i64.const 0
    i64.store offset=112
    local.get 4
    i64.const 0
    i64.store offset=120
    local.get 4
    i64.const 0
    i64.store offset=104
    local.get 4
    i64.const 0
    i64.store offset=96
    local.get 4
    i64.const 0
    i64.store offset=88
    local.get 4
    i64.const 0
    i64.store offset=80
    local.get 4
    i64.const 0
    i64.store offset=72
    local.get 4
    i64.const 0
    i64.store offset=64
    local.get 4
    i64.const 0
    i64.store offset=56
    local.get 4
    i64.const 0
    i64.store offset=48
    local.get 4
    local.get 2
    i32.store offset=4
    local.get 4
    local.get 1
    i32.store
    i32.const 0
    local.set 5
    i32.const 0
    i32.load offset=65896
    local.set 6
    i32.const 0
    local.get 4
    i32.const 16
    i32.add
    i32.store offset=65896
    local.get 4
    local.get 6
    i32.store offset=16
    local.get 4
    local.get 4
    i32.const 8
    i32.add
    i32.store offset=28
    local.get 4
    local.get 4
    i32.const 8
    i32.add
    i32.store offset=32
    local.get 4
    local.get 4
    i32.const 8
    i32.add
    i32.store offset=36
    local.get 4
    local.get 4
    i32.store offset=24
    local.get 4
    local.get 4
    i32.store offset=40
    local.get 4
    local.get 4
    i32.store offset=112
    local.get 4
    local.get 2
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    i32.const -2128831035
    local.set 7
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        local.get 5
        i32.eq
        br_if 1 (;@1;)
        local.get 7
        local.get 1
        local.get 5
        i32.add
        i32.load8_u
        i32.xor
        i32.const 16777619
        i32.mul
        local.set 7
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 7
      i32.const 24
      i32.shr_u
      local.tee 5
      i32.eqz
      local.get 5
      i32.add
      local.set 8
      local.get 4
      i32.const 76
      i32.add
      local.get 0
      i32.load offset=4
      local.tee 5
      i32.store
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          br_if 0 (;@3;)
          local.get 4
          i32.const 80
          i32.add
          local.get 0
          local.get 4
          local.get 3
          local.get 8
          call $runtime.hashmapInsertIntoNewBucket
          local.tee 5
          i32.store
          local.get 4
          i32.const 84
          i32.add
          local.get 5
          i32.store
          local.get 0
          local.get 5
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 4
        i32.const 88
        i32.add
        local.get 0
        i32.load offset=4
        local.tee 5
        i32.store
        local.get 5
        local.get 0
        i32.load8_u offset=13
        local.get 0
        i32.load8_u offset=12
        i32.add
        i32.const 3
        i32.shl
        i32.const 12
        i32.add
        i32.const -1
        i32.const -1
        local.get 0
        i32.load8_u offset=14
        local.tee 9
        i32.shl
        i32.const -1
        i32.xor
        local.get 9
        i32.const 31
        i32.gt_u
        select
        local.get 7
        i32.and
        i32.mul
        i32.add
        local.set 7
        i32.const 0
        local.set 5
        local.get 2
        i32.const 0
        local.get 2
        i32.const 0
        i32.gt_s
        select
        local.set 10
        local.get 4
        i32.const 48
        i32.add
        local.set 11
        local.get 4
        i32.const 52
        i32.add
        local.set 12
        local.get 4
        i32.const 96
        i32.add
        local.set 13
        local.get 4
        i32.const 56
        i32.add
        local.set 14
        local.get 4
        i32.const 44
        i32.add
        local.set 15
        local.get 4
        i32.const 92
        i32.add
        local.set 16
        local.get 4
        i32.const 60
        i32.add
        local.set 17
        local.get 4
        i32.const 68
        i32.add
        local.set 18
        local.get 4
        i32.const 72
        i32.add
        local.set 19
        local.get 4
        i32.const 64
        i32.add
        local.set 20
        local.get 4
        i32.const 120
        i32.add
        local.set 21
        local.get 4
        i32.const 100
        i32.add
        local.set 22
        local.get 4
        i32.const 108
        i32.add
        local.set 23
        local.get 4
        i32.const 104
        i32.add
        local.set 24
        local.get 8
        i32.const 255
        i32.and
        local.set 25
        local.get 4
        i32.const 116
        i32.add
        local.set 26
        i32.const 0
        local.set 27
        i32.const 0
        local.set 28
        i32.const 0
        local.set 29
        block  ;; label = @3
          loop  ;; label = @4
            local.get 11
            local.get 28
            i32.store
            local.get 12
            local.get 27
            i32.store
            local.get 13
            local.get 7
            local.tee 30
            i32.store
            local.get 14
            local.get 5
            i32.store
            local.get 15
            local.get 29
            i32.store
            local.get 16
            local.get 30
            i32.store
            local.get 17
            local.get 30
            i32.store
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 30
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 31
                  loop  ;; label = @8
                    local.get 18
                    local.get 28
                    i32.store
                    local.get 19
                    local.get 27
                    i32.store
                    local.get 20
                    local.get 29
                    i32.store
                    local.get 31
                    i32.const 8
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 22
                    local.get 29
                    local.get 30
                    local.get 31
                    i32.add
                    local.tee 5
                    local.get 27
                    local.get 5
                    i32.load8_u
                    i32.or
                    local.tee 7
                    select
                    local.tee 29
                    i32.store
                    local.get 23
                    local.get 27
                    local.get 31
                    local.get 0
                    i32.load8_u offset=12
                    local.tee 9
                    i32.mul
                    local.get 30
                    i32.add
                    i32.const 12
                    i32.add
                    local.tee 32
                    local.get 7
                    select
                    local.tee 27
                    i32.store
                    local.get 24
                    local.get 28
                    local.get 9
                    i32.const 3
                    i32.shl
                    local.get 31
                    local.get 0
                    i32.load8_u offset=13
                    i32.mul
                    i32.add
                    local.get 30
                    i32.add
                    i32.const 12
                    i32.add
                    local.tee 33
                    local.get 7
                    select
                    local.tee 28
                    i32.store
                    block  ;; label = @9
                      local.get 5
                      i32.load8_u
                      local.get 25
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 26
                      local.get 32
                      i32.load
                      local.tee 5
                      i32.store
                      local.get 32
                      i32.load offset=4
                      local.get 2
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 10
                      local.set 7
                      local.get 1
                      local.set 9
                      loop  ;; label = @10
                        local.get 7
                        i32.eqz
                        br_if 4 (;@6;)
                        local.get 7
                        i32.const -1
                        i32.add
                        local.set 7
                        local.get 5
                        i32.load8_u
                        local.set 32
                        local.get 9
                        i32.load8_u
                        local.set 34
                        local.get 9
                        i32.const 1
                        i32.add
                        local.set 9
                        local.get 5
                        i32.const 1
                        i32.add
                        local.set 5
                        local.get 34
                        local.get 32
                        i32.eq
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 31
                    i32.const 1
                    i32.add
                    local.set 31
                    br 0 (;@8;)
                  end
                end
                local.get 27
                br_if 3 (;@3;)
                local.get 5
                i32.eqz
                br_if 5 (;@1;)
                local.get 4
                i32.const 124
                i32.add
                local.get 0
                local.get 4
                local.get 3
                local.get 8
                call $runtime.hashmapInsertIntoNewBucket
                local.tee 7
                i32.store
                local.get 5
                local.get 7
                i32.store offset=8
                br 4 (;@2;)
              end
              local.get 33
              local.get 3
              local.get 0
              i32.load8_u offset=13
              call $memcpy
              drop
              br 3 (;@2;)
            end
            local.get 21
            local.get 30
            i32.load offset=8
            local.tee 7
            i32.store
            local.get 30
            local.set 5
            br 0 (;@4;)
          end
        end
        local.get 0
        local.get 0
        i32.load offset=8
        i32.const 1
        i32.add
        i32.store offset=8
        local.get 27
        local.get 4
        local.get 0
        i32.load8_u offset=12
        call $memcpy
        drop
        local.get 28
        local.get 3
        local.get 0
        i32.load8_u offset=13
        call $memcpy
        drop
        local.get 29
        i32.eqz
        br_if 1 (;@1;)
        local.get 29
        local.get 8
        i32.store8
      end
      i32.const 0
      local.get 6
      i32.store offset=65896
      local.get 4
      i32.const 128
      i32.add
      global.set 0
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $runtime.hashmapInsertIntoNewBucket (type 0) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i32.const 0
    i32.store offset=12
    local.get 4
    i64.const 2
    i64.store offset=4 align=4
    i32.const 0
    i32.load offset=65896
    local.set 5
    i32.const 0
    local.get 4
    i32.store offset=65896
    local.get 4
    local.get 5
    i32.store
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 4
    i32.const 8
    i32.add
    local.get 0
    i32.load8_u offset=13
    local.get 0
    i32.load8_u offset=12
    i32.add
    i32.const 3
    i32.shl
    i32.const 12
    i32.add
    call $runtime.alloc
    local.tee 6
    i32.store
    local.get 4
    i32.const 12
    i32.add
    local.get 6
    i32.store
    local.get 0
    local.get 0
    i32.load offset=8
    i32.const 1
    i32.add
    i32.store offset=8
    local.get 6
    i32.const 12
    i32.add
    local.get 1
    local.get 0
    i32.load8_u offset=12
    local.tee 7
    call $memcpy
    drop
    local.get 6
    local.get 7
    i32.const 3
    i32.shl
    i32.add
    i32.const 12
    i32.add
    local.get 2
    local.get 0
    i32.load8_u offset=13
    call $memcpy
    drop
    i32.const 0
    local.get 5
    i32.store offset=65896
    local.get 6
    local.get 3
    i32.store8
    local.get 4
    i32.const 16
    i32.add
    global.set 0
    local.get 6)
  (func $runtime.putchar (type 3) (param i32)
    (local i32 i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=65764
      local.tee 1
      i32.const 119
      i32.le_u
      br_if 0 (;@1;)
      call $runtime.lookupPanic
      unreachable
    end
    i32.const 0
    local.get 1
    i32.const 1
    i32.add
    local.tee 2
    i32.store offset=65764
    local.get 1
    i32.const 65776
    i32.add
    local.get 0
    i32.store8
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.and
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i32.const 119
        i32.ne
        br_if 1 (;@1;)
      end
      i32.const 0
      local.get 2
      i32.store offset=65724
      i32.const 1
      i32.const 65720
      i32.const 1
      i32.const 65900
      call $runtime.fd_write
      drop
      i32.const 0
      i32.const 0
      i32.store offset=65764
    end)
  (func $lensvm_abi_version_0_0_1 (type 4))
  (func $lensvm_module (type 4))
  (func $lensvm_exec_rename (type 1) (param i32 i32 i32 i32 i32 i32) (result i32)
    i32.const 1)
  (func $runtime.printstring (type 5) (param i32 i32)
    local.get 1
    i32.const 0
    local.get 1
    i32.const 0
    i32.gt_s
    select
    local.set 1
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load8_u
        call $runtime.putchar
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        i32.const -1
        i32.add
        local.set 1
        br 0 (;@2;)
      end
    end)
  (func $runtime.printnl (type 4)
    i32.const 13
    call $runtime.putchar
    i32.const 10
    call $runtime.putchar)
  (func $runtime.looksLikePointer (type 2) (param i32) (result i32)
    (local i32)
    i32.const 0
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 65912
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=65716
      local.get 0
      i32.gt_u
      local.set 1
    end
    local.get 1)
  (func $_runtime.gcBlock_.findHead (type 2) (param i32) (result i32)
    (local i32 i32)
    loop  ;; label = @1
      local.get 0
      call $_runtime.gcBlock_.state
      local.set 1
      local.get 0
      i32.const -1
      i32.add
      local.tee 2
      local.set 0
      local.get 1
      i32.const 255
      i32.and
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 1
    i32.add)
  (func $_start (type 4)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 160
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i64.const 77309411328
    i64.store offset=80
    local.get 0
    i64.const 0
    i64.store offset=152
    local.get 0
    i64.const 0
    i64.store offset=144
    local.get 0
    i64.const 0
    i64.store offset=136
    local.get 0
    i64.const 0
    i64.store offset=128
    local.get 0
    i64.const 0
    i64.store offset=120
    local.get 0
    i64.const 0
    i64.store offset=112
    local.get 0
    i64.const 0
    i64.store offset=104
    local.get 0
    i64.const 0
    i64.store offset=96
    local.get 0
    i64.const 0
    i64.store offset=88
    i32.const 0
    i32.load offset=65896
    local.set 1
    i32.const 0
    local.get 0
    i32.const 80
    i32.add
    i32.store offset=65896
    local.get 0
    local.get 1
    i32.store offset=80
    i32.const 0
    memory.size
    i32.const 16
    i32.shl
    i32.store offset=65744
    call $runtime.calculateHeapAddresses
    local.get 0
    i32.const 0
    i32.load offset=65716
    local.tee 2
    i32.store offset=88
    local.get 0
    local.get 2
    i32.store offset=92
    local.get 2
    i32.const 0
    i32.const 0
    i32.load offset=65744
    local.get 2
    i32.sub
    call $memset
    drop
    i32.const 0
    memory.size
    i32.const 16
    i32.shl
    i32.store offset=65744
    local.get 0
    i32.const 32
    i32.add
    i32.const 65536
    i32.const 15
    call $errors.New
    i32.const 0
    local.get 0
    i32.load offset=32
    i32.store offset=65904
    i32.const 0
    local.get 0
    i32.load offset=36
    local.tee 2
    i32.store offset=65728
    local.get 0
    local.get 2
    i32.store offset=96
    local.get 0
    i32.const 24
    i32.add
    i32.const 65552
    i32.const 21
    call $errors.New
    i32.const 0
    local.get 0
    i32.load offset=24
    i32.store offset=65908
    i32.const 0
    local.get 0
    i32.load offset=28
    local.tee 2
    i32.store offset=65732
    local.get 0
    local.get 2
    i32.store offset=100
    local.get 0
    i32.const 108
    call $runtime.alloc
    local.tee 3
    i32.store offset=104
    i32.const 16
    call $runtime.alloc
    local.tee 2
    i32.const 0
    i32.store8 offset=14
    local.get 2
    i32.const 1032
    i32.store16 offset=12 align=1
    local.get 2
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store offset=108
    local.get 0
    local.get 2
    i32.store offset=112
    local.get 0
    i32.const 0
    i32.load offset=65728
    local.tee 3
    i32.store offset=116
    local.get 0
    i32.const 16
    i32.add
    local.get 3
    i32.const 0
    i32.load offset=65904
    call $_error_.Error
    local.get 0
    local.get 0
    i32.load offset=16
    local.tee 3
    i32.store offset=120
    local.get 0
    i32.load offset=20
    local.set 4
    local.get 0
    i32.const 1
    i32.store offset=64
    local.get 2
    local.get 3
    local.get 4
    local.get 0
    i32.const 64
    i32.add
    call $runtime.hashmapStringSet
    local.get 0
    i32.const 0
    i32.load offset=65732
    local.tee 3
    i32.store offset=124
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    i32.const 0
    i32.load offset=65908
    call $_error_.Error
    local.get 0
    local.get 0
    i32.load offset=8
    local.tee 3
    i32.store offset=128
    local.get 0
    i32.load offset=12
    local.set 4
    local.get 0
    i32.const 2
    i32.store offset=64
    local.get 2
    local.get 3
    local.get 4
    local.get 0
    i32.const 64
    i32.add
    call $runtime.hashmapStringSet
    i32.const 0
    local.get 2
    i32.store offset=65712
    local.get 0
    local.get 0
    i32.const 52
    i32.add
    i32.store offset=132
    local.get 0
    i32.const 0
    i32.store offset=52
    local.get 0
    local.get 0
    i32.const 48
    i32.add
    i32.store offset=136
    local.get 0
    i32.const 0
    i32.store offset=48
    local.get 0
    i32.const 0
    i32.store8 offset=52
    local.get 0
    i32.const 1
    i32.store8 offset=48
    local.get 0
    local.get 0
    i32.const 44
    i32.add
    i32.store offset=140
    local.get 0
    i32.const 0
    i32.store offset=44
    local.get 0
    local.get 0
    i32.const 56
    i32.add
    i32.store offset=148
    local.get 0
    i32.const 16
    call $runtime.alloc
    local.tee 2
    i32.store offset=144
    local.get 0
    local.get 2
    i32.store offset=156
    local.get 0
    i64.const 0
    i64.store offset=56 align=4
    local.get 0
    local.get 0
    i32.const 64
    i32.add
    i32.store offset=152
    local.get 2
    i32.const 1
    i32.store offset=12
    local.get 2
    i64.const 5
    i64.store offset=4 align=4
    local.get 2
    i32.const 65686
    i32.store
    i32.const 0
    i32.const 1
    local.get 0
    i32.const 52
    i32.add
    i32.const 0
    local.get 0
    i32.const 48
    i32.add
    i32.const 0
    call $lensvm_exec_hoist
    drop
    i32.const 0
    local.get 1
    i32.store offset=65896
    local.get 0
    i32.const 160
    i32.add
    global.set 0)
  (func $_error_.Error (type 6) (param i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.const 997
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i64.load align=4
      i64.store
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $memcpy (type 8) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 2
          i32.const -1
          i32.add
          local.set 4
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const 1
          i32.eq
          br_if 2 (;@1;)
          local.get 4
          local.set 2
          local.get 1
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 2
      local.set 4
      local.get 0
      local.set 3
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 3
        i32.and
        local.tee 2
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 4
          i32.const 16
          i32.lt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 3
            local.get 1
            i32.load
            i32.store
            local.get 3
            i32.const 4
            i32.add
            local.get 1
            i32.const 4
            i32.add
            i32.load
            i32.store
            local.get 3
            i32.const 8
            i32.add
            local.get 1
            i32.const 8
            i32.add
            i32.load
            i32.store
            local.get 3
            i32.const 12
            i32.add
            local.get 1
            i32.const 12
            i32.add
            i32.load
            i32.store
            local.get 3
            i32.const 16
            i32.add
            local.set 3
            local.get 1
            i32.const 16
            i32.add
            local.set 1
            local.get 4
            i32.const -16
            i32.add
            local.tee 4
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 4
          i32.const 8
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i64.load align=4
          i64.store align=4
          local.get 1
          i32.const 8
          i32.add
          local.set 1
          local.get 3
          i32.const 8
          i32.add
          local.set 3
        end
        block  ;; label = @3
          local.get 4
          i32.const 4
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 3
          i32.const 4
          i32.add
          local.set 3
        end
        block  ;; label = @3
          local.get 4
          i32.const 2
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 3
          local.get 1
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 3
          i32.const 2
          i32.add
          local.set 3
          local.get 1
          i32.const 2
          i32.add
          local.set 1
        end
        local.get 4
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 0
        return
      end
      block  ;; label = @2
        local.get 4
        i32.const 32
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const -1
              i32.add
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;)
            end
            local.get 3
            local.get 1
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 3
            local.get 1
            i32.load
            local.tee 5
            i32.store8
            local.get 3
            local.get 1
            i32.load8_u offset=2
            i32.store8 offset=2
            local.get 4
            i32.const -3
            i32.add
            local.set 4
            local.get 3
            i32.const 3
            i32.add
            local.set 6
            i32.const 0
            local.set 2
            loop  ;; label = @5
              local.get 6
              local.get 2
              i32.add
              local.tee 3
              local.get 1
              local.get 2
              i32.add
              local.tee 7
              i32.const 4
              i32.add
              i32.load
              local.tee 8
              i32.const 8
              i32.shl
              local.get 5
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 4
              i32.add
              local.get 7
              i32.const 8
              i32.add
              i32.load
              local.tee 5
              i32.const 8
              i32.shl
              local.get 8
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 8
              i32.add
              local.get 7
              i32.const 12
              i32.add
              i32.load
              local.tee 8
              i32.const 8
              i32.shl
              local.get 5
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 12
              i32.add
              local.get 7
              i32.const 16
              i32.add
              i32.load
              local.tee 5
              i32.const 8
              i32.shl
              local.get 8
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 2
              i32.const 16
              i32.add
              local.set 2
              local.get 4
              i32.const -16
              i32.add
              local.tee 4
              i32.const 16
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 6
            local.get 2
            i32.add
            local.set 3
            local.get 1
            local.get 2
            i32.add
            i32.const 3
            i32.add
            local.set 1
            br 2 (;@2;)
          end
          local.get 3
          local.get 1
          i32.load
          local.tee 5
          i32.store8
          local.get 3
          local.get 1
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 4
          i32.const -2
          i32.add
          local.set 4
          local.get 3
          i32.const 2
          i32.add
          local.set 6
          i32.const 0
          local.set 2
          loop  ;; label = @4
            local.get 6
            local.get 2
            i32.add
            local.tee 3
            local.get 1
            local.get 2
            i32.add
            local.tee 7
            i32.const 4
            i32.add
            i32.load
            local.tee 8
            i32.const 16
            i32.shl
            local.get 5
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 4
            i32.add
            local.get 7
            i32.const 8
            i32.add
            i32.load
            local.tee 5
            i32.const 16
            i32.shl
            local.get 8
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 8
            i32.add
            local.get 7
            i32.const 12
            i32.add
            i32.load
            local.tee 8
            i32.const 16
            i32.shl
            local.get 5
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 12
            i32.add
            local.get 7
            i32.const 16
            i32.add
            i32.load
            local.tee 5
            i32.const 16
            i32.shl
            local.get 8
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 2
            i32.const 16
            i32.add
            local.set 2
            local.get 4
            i32.const -16
            i32.add
            local.tee 4
            i32.const 17
            i32.gt_u
            br_if 0 (;@4;)
          end
          local.get 6
          local.get 2
          i32.add
          local.set 3
          local.get 1
          local.get 2
          i32.add
          i32.const 2
          i32.add
          local.set 1
          br 1 (;@2;)
        end
        local.get 3
        local.get 1
        i32.load
        local.tee 5
        i32.store8
        local.get 4
        i32.const -1
        i32.add
        local.set 4
        local.get 3
        i32.const 1
        i32.add
        local.set 6
        i32.const 0
        local.set 2
        loop  ;; label = @3
          local.get 6
          local.get 2
          i32.add
          local.tee 3
          local.get 1
          local.get 2
          i32.add
          local.tee 7
          i32.const 4
          i32.add
          i32.load
          local.tee 8
          i32.const 24
          i32.shl
          local.get 5
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 3
          i32.const 4
          i32.add
          local.get 7
          i32.const 8
          i32.add
          i32.load
          local.tee 5
          i32.const 24
          i32.shl
          local.get 8
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 3
          i32.const 8
          i32.add
          local.get 7
          i32.const 12
          i32.add
          i32.load
          local.tee 8
          i32.const 24
          i32.shl
          local.get 5
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 3
          i32.const 12
          i32.add
          local.get 7
          i32.const 16
          i32.add
          i32.load
          local.tee 5
          i32.const 24
          i32.shl
          local.get 8
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 2
          i32.const 16
          i32.add
          local.set 2
          local.get 4
          i32.const -16
          i32.add
          local.tee 4
          i32.const 18
          i32.gt_u
          br_if 0 (;@3;)
        end
        local.get 6
        local.get 2
        i32.add
        local.set 3
        local.get 1
        local.get 2
        i32.add
        i32.const 1
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 4
        i32.const 16
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load16_u align=1
        i32.store16 align=1
        local.get 3
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 3
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 3
        local.get 1
        i32.load8_u offset=4
        i32.store8 offset=4
        local.get 3
        local.get 1
        i32.load8_u offset=5
        i32.store8 offset=5
        local.get 3
        local.get 1
        i32.load8_u offset=6
        i32.store8 offset=6
        local.get 3
        local.get 1
        i32.load8_u offset=7
        i32.store8 offset=7
        local.get 3
        local.get 1
        i32.load8_u offset=8
        i32.store8 offset=8
        local.get 3
        local.get 1
        i32.load8_u offset=9
        i32.store8 offset=9
        local.get 3
        local.get 1
        i32.load8_u offset=10
        i32.store8 offset=10
        local.get 3
        local.get 1
        i32.load8_u offset=11
        i32.store8 offset=11
        local.get 3
        local.get 1
        i32.load8_u offset=12
        i32.store8 offset=12
        local.get 3
        local.get 1
        i32.load8_u offset=13
        i32.store8 offset=13
        local.get 3
        local.get 1
        i32.load8_u offset=14
        i32.store8 offset=14
        local.get 3
        local.get 1
        i32.load8_u offset=15
        i32.store8 offset=15
        local.get 3
        i32.const 16
        i32.add
        local.set 3
        local.get 1
        i32.const 16
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 4
        i32.const 8
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 3
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 3
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 3
        local.get 1
        i32.load8_u offset=4
        i32.store8 offset=4
        local.get 3
        local.get 1
        i32.load8_u offset=5
        i32.store8 offset=5
        local.get 3
        local.get 1
        i32.load8_u offset=6
        i32.store8 offset=6
        local.get 3
        local.get 1
        i32.load8_u offset=7
        i32.store8 offset=7
        local.get 3
        i32.const 8
        i32.add
        local.set 3
        local.get 1
        i32.const 8
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 4
        i32.const 4
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 3
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 3
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 3
        i32.const 4
        i32.add
        local.set 3
        local.get 1
        i32.const 4
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 4
        i32.const 2
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 3
        i32.const 2
        i32.add
        local.set 3
        local.get 1
        i32.const 2
        i32.add
        local.set 1
      end
      local.get 4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.load8_u
      i32.store8
    end
    local.get 0)
  (func $memset (type 8) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8
      local.get 2
      local.get 0
      i32.add
      local.tee 3
      i32.const -1
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=2
      local.get 0
      local.get 1
      i32.store8 offset=1
      local.get 3
      i32.const -3
      i32.add
      local.get 1
      i32.store8
      local.get 3
      i32.const -2
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=3
      local.get 3
      i32.const -4
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.tee 3
      local.get 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee 1
      i32.store
      local.get 3
      local.get 2
      local.get 4
      i32.sub
      i32.const -4
      i32.and
      local.tee 4
      i32.add
      local.tee 2
      i32.const -4
      i32.add
      local.get 1
      i32.store
      local.get 4
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=8
      local.get 3
      local.get 1
      i32.store offset=4
      local.get 2
      i32.const -8
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -12
      i32.add
      local.get 1
      i32.store
      local.get 4
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=24
      local.get 3
      local.get 1
      i32.store offset=20
      local.get 3
      local.get 1
      i32.store offset=16
      local.get 3
      local.get 1
      i32.store offset=12
      local.get 2
      i32.const -16
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -20
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -24
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -28
      i32.add
      local.get 1
      i32.store
      local.get 4
      local.get 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 5
      i32.sub
      local.tee 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i64.extend_i32_u
      local.tee 6
      i64.const 32
      i64.shl
      local.get 6
      i64.or
      local.set 6
      local.get 3
      local.get 5
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 6
        i64.store
        local.get 1
        i32.const 24
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 16
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 8
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 32
        i32.add
        local.set 1
        local.get 2
        i32.const -32
        i32.add
        local.tee 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 65536))
  (export "memory" (memory 0))
  (export "lensvm_abi_version_0_0_1" (func $lensvm_abi_version_0_0_1))
  (export "lensvm_module" (func $lensvm_module))
  (export "lensvm_exec_rename" (func $lensvm_exec_rename))
  (export "_start" (func $_start))
  (data (;0;) (i32.const 65536) "Invalid context\00Lens has bad argumentout of memory\00\00\00\00\00\00\00\00\00\00\00\00\00\00index out of range\00\00\00\00\00\00\00\00\00\00\00\00\00\00nil pointer dereference\00\00\00\00\00\00\00\00\00panic: runtime error: hoist")
  (data (;1;) (i32.const 65696) "\06\00\00\00\b0\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0\00\01\00\00\00\00\00\00\00\00\00\00\00\00\007"))
