(module
  (type (;0;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param i32 i32 i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32 i32 i32)))
  (type (;9;) (func (param i32 i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32) (result f64)))
  (type (;11;) (func (param i32 i32 i32) (result i64)))
  (type (;12;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32 i32 f64 i32 i32 i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i64 i32)))
  (type (;16;) (func (param i32 i64 i64 i32 i64) (result i32)))
  (type (;17;) (func (param i32 i32 i32 i32 i32 i64 i32 i32)))
  (type (;18;) (func (param i32 i64 i32 i32)))
  (type (;19;) (func (param i32 i64 i64 i64 i64 i64) (result i32)))
  (type (;20;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;21;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;22;) (func (param i32 i64)))
  (type (;23;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;24;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;25;) (func (result i32)))
  (type (;26;) (func (param i32 i64 i32)))
  (type (;27;) (func (param i32 i64 i32 i32 i32 i32)))
  (type (;28;) (func (param i32 f64 f64 i32 i32)))
  (type (;29;) (func (param i32 f64 i32 i32)))
  (type (;30;) (func (param i32 f64 i32 i32 i32)))
  (type (;31;) (func (param i64)))
  (type (;32;) (func (param f32)))
  (type (;33;) (func (param f64)))
  (import "wasi_unstable" "fd_write" (func $runtime.fd_write (type 0)))
  (func $runtime.alloc (type 1) (param i32) (result i32)
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
      i32.load offset=83480
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
              i32.load offset=83624
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
                      i32.load offset=72764
                      i32.ge_u
                      br_if 3 (;@6;)
                      block  ;; label = @10
                        local.get 6
                        i32.const 3
                        i32.shr_u
                        i32.const 83440
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
                        i32.load offset=72768
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
                  i32.load8_u offset=83488
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 5
                  i32.const 0
                  local.set 6
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 6
                      i32.const 0
                      i32.load offset=83484
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
                      i32.load offset=82672
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
                i32.store8 offset=83488
                loop  ;; label = @7
                  local.get 6
                  i32.const 0
                  i32.load offset=83484
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
              i32.load offset=83472
              local.set 2
              i32.const 0
              local.get 6
              i32.const 16
              i32.shl
              i32.store offset=83472
              i32.const 0
              i32.load offset=82672
              local.set 6
              call $runtime.calculateHeapAddresses
              i32.const 0
              i32.load offset=82672
              local.get 6
              local.get 2
              local.get 6
              i32.sub
              call $memcpy
              drop
              br 1 (;@4;)
            end
            i32.const 71361
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
            i32.load offset=83484
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
          i32.store offset=83480
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
              i32.load offset=83480
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
          i32.const 83672
          i32.add
          i32.const 0
          local.get 0
          call $memset
          return
        end
        i32.const 0
        i32.load offset=83480
        local.set 2
        local.get 6
        local.set 5
        br 0 (;@2;)
      end
    end
    i32.const 83476)
  (func $runtime.markRoot (type 2) (param i32)
    block  ;; label = @1
      local.get 0
      call $runtime.looksLikePointer
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 83672
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
  (func $_runtime.gcBlock_.state (type 1) (param i32) (result i32)
    i32.const 0
    i32.load offset=82672
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
  (func $_runtime.gcBlock_.markFree (type 2) (param i32)
    (local i32)
    i32.const 0
    i32.load offset=82672
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
  (func $runtime.startMark (type 2) (param i32)
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
        i32.const 83672
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
        i32.const 83656
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
            i32.const 83672
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
              i32.store8 offset=83488
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
  (func $runtime.calculateHeapAddresses (type 3)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=83472
    local.tee 0
    local.get 0
    i32.const 83672
    i32.sub
    i32.const 6
    i32.shr_u
    i32.sub
    local.tee 0
    i32.store offset=82672
    i32.const 0
    local.get 0
    i32.const 83672
    i32.sub
    i32.const 4
    i32.shr_u
    i32.store offset=83484)
  (func $runtime.runtimePanic (type 4) (param i32 i32)
    i32.const 71456
    i32.const 22
    call $runtime.printstring
    local.get 0
    local.get 1
    call $runtime.printstring
    call $runtime.printnl
    unreachable
    unreachable)
  (func $_runtime.gcBlock_.setState (type 4) (param i32 i32)
    (local i32)
    i32.const 0
    i32.load offset=82672
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
  (func $runtime.lookupPanic (type 3)
    i32.const 71376
    i32.const 18
    call $runtime.runtimePanic)
  (func $runtime.nilPanic (type 3)
    i32.const 71408
    i32.const 23
    call $runtime.runtimePanic)
  (func $unicode/utf8.DecodeRuneInString (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    i32.const 0
    local.set 4
    block  ;; label = @1
      local.get 2
      i32.const 0
      i32.le_s
      br_if 0 (;@1;)
      local.get 1
      i32.load8_u
      local.tee 5
      i32.const 65536
      i32.add
      i32.load8_u
      local.set 6
      block  ;; label = @2
        local.get 5
        i32.const -194
        i32.add
        i32.const 50
        i32.le_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 1
        i32.store offset=4
        local.get 0
        i32.const 65533
        local.get 5
        local.get 6
        i32.const 1
        i32.and
        select
        i32.store
        local.get 3
        i32.const 16
        i32.add
        global.set 0
        return
      end
      local.get 3
      local.get 6
      i32.const 3
      i32.shr_u
      i32.const 30
      i32.and
      local.tee 4
      i32.const 65793
      i32.add
      i32.load8_u
      local.tee 7
      i32.store8 offset=9
      local.get 3
      local.get 4
      i32.const 65792
      i32.add
      i32.load8_u
      local.tee 8
      i32.store8 offset=8
      i32.const 1
      local.set 4
      local.get 6
      i32.const 7
      i32.and
      local.get 2
      i32.gt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i32.const 2
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u offset=1
        local.tee 6
        local.get 8
        i32.const 255
        i32.and
        i32.lt_u
        br_if 1 (;@1;)
        local.get 7
        i32.const 255
        i32.and
        local.get 6
        i32.lt_u
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.const -224
            i32.add
            i32.const 21
            i32.ge_u
            br_if 0 (;@4;)
            local.get 2
            i32.const 3
            i32.lt_u
            br_if 2 (;@2;)
            local.get 1
            i32.load8_s offset=2
            local.tee 8
            i32.const -1
            i32.gt_s
            br_if 3 (;@1;)
            local.get 8
            i32.const 255
            i32.and
            i32.const 191
            i32.gt_u
            br_if 3 (;@1;)
            local.get 5
            i32.const -240
            i32.add
            i32.const 5
            i32.ge_u
            br_if 1 (;@3;)
            local.get 2
            i32.const 4
            i32.lt_u
            br_if 2 (;@2;)
            local.get 1
            i32.load8_s offset=3
            local.tee 2
            i32.const -1
            i32.gt_s
            br_if 3 (;@1;)
            local.get 2
            i32.const 255
            i32.and
            i32.const 191
            i32.gt_u
            br_if 3 (;@1;)
            local.get 0
            i32.const 4
            i32.store offset=4
            local.get 0
            local.get 6
            i32.const 63
            i32.and
            i32.const 12
            i32.shl
            local.get 5
            i32.const 7
            i32.and
            i32.const 18
            i32.shl
            i32.or
            local.get 8
            i32.const 63
            i32.and
            i32.const 6
            i32.shl
            i32.or
            local.get 2
            i32.const 63
            i32.and
            i32.or
            i32.store
            local.get 3
            i32.const 16
            i32.add
            global.set 0
            return
          end
          local.get 0
          i32.const 2
          i32.store offset=4
          local.get 0
          local.get 5
          i32.const 31
          i32.and
          i32.const 6
          i32.shl
          local.get 6
          i32.const 63
          i32.and
          i32.or
          i32.store
          local.get 3
          i32.const 16
          i32.add
          global.set 0
          return
        end
        local.get 0
        i32.const 3
        i32.store offset=4
        local.get 0
        local.get 6
        i32.const 63
        i32.and
        i32.const 6
        i32.shl
        local.get 5
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        i32.or
        local.get 8
        i32.const 63
        i32.and
        i32.or
        i32.store
        local.get 3
        i32.const 16
        i32.add
        global.set 0
        return
      end
      call $runtime.lookupPanic
      unreachable
    end
    local.get 0
    i32.const 65533
    i32.store
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func $unicode/utf8.EncodeRune (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 127
              i32.gt_u
              br_if 0 (;@5;)
              local.get 1
              br_if 1 (;@4;)
              br 4 (;@1;)
            end
            block  ;; label = @5
              local.get 2
              i32.const 2047
              i32.gt_u
              br_if 0 (;@5;)
              local.get 1
              i32.const 2
              i32.lt_u
              br_if 4 (;@1;)
              local.get 0
              local.get 2
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              local.get 0
              local.get 2
              i32.const 6
              i32.shr_u
              i32.const 192
              i32.or
              i32.store8
              i32.const 2
              return
            end
            i32.const 65533
            local.set 3
            local.get 2
            i32.const 1114111
            i32.gt_u
            br_if 2 (;@2;)
            local.get 2
            i32.const -2048
            i32.and
            i32.const 55296
            i32.eq
            br_if 2 (;@2;)
            local.get 2
            i32.const 65536
            i32.ge_u
            br_if 1 (;@3;)
            local.get 2
            local.set 3
            br 2 (;@2;)
          end
          local.get 0
          local.get 2
          i32.store8
          i32.const 1
          return
        end
        local.get 1
        i32.const 4
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 2
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=3
        local.get 0
        local.get 2
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8
        local.get 0
        local.get 2
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=2
        local.get 0
        local.get 2
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        i32.const 4
        return
      end
      local.get 1
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get 0
      local.get 3
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      i32.store8
      local.get 0
      local.get 3
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      i32.const 3
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $runtime._panic (type 4) (param i32 i32)
    i32.const 71354
    i32.const 7
    call $runtime.printstring
    local.get 0
    local.get 1
    call $runtime.printitf
    call $runtime.printnl
    unreachable
    unreachable)
  (func $runtime.printstring (type 4) (param i32 i32)
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
  (func $runtime.printitf (type 4) (param i32 i32)
    (local i32 i32 i64 f32 f32 f64 f64 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=60
    local.get 2
    i64.const 0
    i64.store offset=52 align=4
    local.get 2
    i64.const 0
    i64.store offset=44 align=4
    local.get 2
    i64.const 6
    i64.store offset=36 align=4
    i32.const 0
    i32.load offset=83624
    local.set 3
    i32.const 0
    local.get 2
    i32.const 32
    i32.add
    i32.store offset=83624
    local.get 2
    local.get 3
    i32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 0
                                        i32.const -2
                                        i32.add
                                        br_table 0 (;@18;) 16 (;@2;) 3 (;@15;) 16 (;@2;) 1 (;@17;) 16 (;@2;) 2 (;@16;) 16 (;@2;) 3 (;@15;) 16 (;@2;) 4 (;@14;) 16 (;@2;) 5 (;@13;) 16 (;@2;) 6 (;@12;) 16 (;@2;) 7 (;@11;) 16 (;@2;) 8 (;@10;) 16 (;@2;) 9 (;@9;) 16 (;@2;) 10 (;@8;) 16 (;@2;) 11 (;@7;) 16 (;@2;) 12 (;@6;) 16 (;@2;) 13 (;@5;) 16 (;@2;) 14 (;@4;) 16 (;@2;) 15 (;@3;) 16 (;@2;)
                                      end
                                      block  ;; label = @18
                                        local.get 1
                                        i32.const 1
                                        i32.and
                                        i32.eqz
                                        br_if 0 (;@18;)
                                        i32.const 72211
                                        i32.const 4
                                        call $runtime.printstring
                                        br 17 (;@1;)
                                      end
                                      i32.const 72215
                                      i32.const 5
                                      call $runtime.printstring
                                      br 16 (;@1;)
                                    end
                                    local.get 1
                                    i32.const 24
                                    i32.shl
                                    i32.const 24
                                    i32.shr_s
                                    call $runtime.printint32
                                    br 15 (;@1;)
                                  end
                                  local.get 1
                                  i32.const 16
                                  i32.shl
                                  i32.const 16
                                  i32.shr_s
                                  call $runtime.printint32
                                  br 14 (;@1;)
                                end
                                local.get 1
                                call $runtime.printint32
                                br 13 (;@1;)
                              end
                              block  ;; label = @14
                                local.get 1
                                i64.load
                                local.tee 4
                                i64.const -1
                                i64.gt_s
                                br_if 0 (;@14;)
                                i32.const 45
                                call $runtime.putchar
                                i64.const 0
                                local.get 4
                                i64.sub
                                local.set 4
                              end
                              local.get 4
                              call $runtime.printuint64
                              br 12 (;@1;)
                            end
                            local.get 1
                            i64.extend_i32_u
                            call $runtime.printuint64
                            br 11 (;@1;)
                          end
                          local.get 1
                          i32.const 255
                          i32.and
                          i64.extend_i32_u
                          call $runtime.printuint64
                          br 10 (;@1;)
                        end
                        local.get 1
                        i32.const 65535
                        i32.and
                        i64.extend_i32_u
                        call $runtime.printuint64
                        br 9 (;@1;)
                      end
                      local.get 1
                      i64.extend_i32_u
                      call $runtime.printuint64
                      br 8 (;@1;)
                    end
                    local.get 1
                    i64.load
                    call $runtime.printuint64
                    br 7 (;@1;)
                  end
                  local.get 1
                  call $runtime.printptr
                  br 6 (;@1;)
                end
                local.get 1
                f32.reinterpret_i32
                call $runtime.printfloat32
                br 5 (;@1;)
              end
              local.get 1
              f64.load
              call $runtime.printfloat64
              br 4 (;@1;)
            end
            local.get 1
            f32.load offset=4
            local.set 5
            local.get 1
            f32.load
            local.set 6
            i32.const 40
            call $runtime.putchar
            local.get 6
            call $runtime.printfloat32
            local.get 5
            call $runtime.printfloat32
            i32.const 71747
            i32.const 2
            call $runtime.printstring
            br 3 (;@1;)
          end
          local.get 1
          f64.load offset=8
          local.set 7
          local.get 1
          f64.load
          local.set 8
          i32.const 40
          call $runtime.putchar
          local.get 8
          call $runtime.printfloat64
          local.get 7
          call $runtime.printfloat64
          i32.const 71747
          i32.const 2
          call $runtime.printstring
          br 2 (;@1;)
        end
        local.get 1
        i32.load
        local.get 1
        i32.load offset=4
        call $runtime.printstring
        br 1 (;@1;)
      end
      i32.const 1
      local.set 9
      block  ;; label = @2
        local.get 0
        call $error$typeassert
        i32.const 1
        i32.and
        local.tee 10
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        i32.const 0
        local.get 10
        select
        local.get 0
        i32.const 0
        local.get 10
        select
        call $_error_.Error
        local.get 2
        i32.const 40
        i32.add
        local.get 2
        i32.load
        local.tee 1
        i32.store
        local.get 1
        local.get 2
        i32.load offset=4
        call $runtime.printstring
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 88
            i32.ne
            br_if 0 (;@4;)
            i32.const 66056
            local.set 1
            br 1 (;@3;)
          end
          local.get 0
          i32.const 132
          i32.ne
          br_if 1 (;@2;)
          local.get 2
          i32.const 8
          i32.add
          local.get 1
          call $_github.com/valyala/fastjson.Type_.String$invoke
          local.get 2
          i32.load offset=12
          local.set 9
          local.get 2
          i32.load offset=8
          local.set 1
        end
        local.get 2
        i32.const 44
        i32.add
        local.get 1
        i32.store
        local.get 1
        local.get 9
        call $runtime.printstring
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.store offset=28
      local.get 2
      local.get 0
      i32.store offset=24
      local.get 2
      local.get 0
      i32.store offset=16
      local.get 2
      local.get 1
      i32.store offset=20
      local.get 2
      i32.const 60
      i32.add
      local.get 2
      i32.const 24
      i32.add
      i32.store
      local.get 2
      i32.const 56
      i32.add
      local.get 2
      i32.const 24
      i32.add
      i32.store
      local.get 2
      i32.const 48
      i32.add
      local.get 2
      i32.const 24
      i32.add
      i32.store
      local.get 2
      i32.const 52
      i32.add
      local.get 2
      i32.const 16
      i32.add
      i32.store
      i32.const 40
      call $runtime.putchar
      local.get 0
      i64.extend_i32_u
      call $runtime.printuint64
      i32.const 58
      call $runtime.putchar
      local.get 1
      call $runtime.printptr
      i32.const 41
      call $runtime.putchar
    end
    i32.const 0
    local.get 3
    i32.store offset=83624
    local.get 2
    i32.const 64
    i32.add
    global.set 0)
  (func $runtime.printnl (type 3)
    i32.const 13
    call $runtime.putchar
    i32.const 10
    call $runtime.putchar)
  (func $reflect.ValueOf (type 5) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    i32.const 16
    i32.add
    i32.const 0
    i32.store8
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_reflect.Value_.Kind (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 8
    i32.add
    i32.const 0
    i32.store8
    local.get 3
    i64.const 0
    i64.store
    local.get 0
    local.get 1
    local.get 2
    call $_reflect.Value_.Type
    call $_reflect.Type_.Kind
    local.set 0
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func $_reflect.Value_.Type (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    i32.const 8
    i32.add
    i32.const 0
    i32.store8
    local.get 3
    i64.const 0
    i64.store
    local.get 0)
  (func $_reflect.Type_.Kind (type 1) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.const 1
    i32.shr_u
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 1
      i32.const 31
      i32.and
      return
    end
    local.get 1
    i32.const 7
    i32.and
    i32.const 19
    i32.add)
  (func $_reflect.Value_.Len (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 3
    i64.const 0
    i64.store offset=36 align=4
    local.get 3
    i32.const 3
    i32.store offset=28
    local.get 3
    local.get 2
    i32.store8 offset=16
    i32.const 0
    local.set 4
    i32.const 0
    i32.load offset=83624
    local.set 5
    i32.const 0
    local.get 3
    i32.const 24
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 5
    i32.store offset=24
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    local.get 3
    i32.const 8
    i32.add
    i32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  local.get 1
                  local.get 2
                  call $_reflect.Value_.Type
                  local.tee 0
                  call $_reflect.Type_.Kind
                  i32.const -17
                  i32.add
                  br_table 5 (;@2;) 0 (;@7;) 2 (;@5;) 0 (;@7;) 0 (;@7;) 4 (;@3;) 1 (;@6;) 0 (;@7;) 3 (;@4;) 0 (;@7;)
                end
                local.get 3
                i32.const 36
                i32.add
                i32.const 8
                call $runtime.alloc
                local.tee 1
                i32.store
                local.get 3
                i32.const 40
                i32.add
                local.get 1
                i32.store
                local.get 1
                i32.const 3
                i32.store offset=4
                local.get 1
                i32.const 66285
                i32.store
                i32.const 997
                local.get 1
                call $runtime._panic
                unreachable
              end
              local.get 0
              local.get 1
              local.get 2
              call $_reflect.Value_.Type
              call $_reflect.Type_.Len
              local.set 1
              i32.const 0
              local.get 5
              i32.store offset=83624
              local.get 3
              i32.const 48
              i32.add
              global.set 0
              local.get 1
              return
            end
            local.get 1
            i32.eqz
            br_if 3 (;@1;)
            local.get 1
            i32.load offset=24
            local.set 4
            br 3 (;@1;)
          end
          local.get 1
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          i32.load offset=8
          local.set 4
          br 2 (;@1;)
        end
        i32.const 0
        local.get 5
        i32.store offset=83624
        local.get 1
        i32.load offset=4
        local.set 1
        local.get 3
        i32.const 48
        i32.add
        global.set 0
        local.get 1
        return
      end
      i32.const 0
      local.get 5
      i32.store offset=83624
      local.get 1
      i32.load offset=4
      local.set 1
      local.get 3
      i32.const 48
      i32.add
      global.set 0
      local.get 1
      return
    end
    i32.const 0
    local.get 5
    i32.store offset=83624
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 4)
  (func $_reflect.Type_.Len (type 1) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 0
    i32.store offset=60
    local.get 1
    i64.const 0
    i64.store offset=52 align=4
    local.get 1
    i64.const 0
    i64.store offset=44 align=4
    local.get 1
    i64.const 6
    i64.store offset=36 align=4
    i32.const 0
    i32.load offset=83624
    local.set 2
    i32.const 0
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=83624
    local.get 1
    local.get 2
    i32.store offset=32
    block  ;; label = @1
      local.get 0
      call $_reflect.Type_.Kind
      i32.const 23
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i64.const 0
      i64.store offset=24
      local.get 1
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 24
      i32.add
      i32.store
      local.get 1
      i32.const 44
      i32.add
      i32.const 8
      call $runtime.alloc
      local.tee 0
      i32.store
      local.get 1
      i32.const 48
      i32.add
      local.get 0
      i32.store
      local.get 0
      i32.const 3
      i32.store offset=4
      local.get 0
      i32.const 66285
      i32.store
      i32.const 63
      local.get 0
      call $runtime._panic
      unreachable
    end
    local.get 1
    i32.const 52
    i32.add
    local.get 0
    call $_reflect.Type_.stripPrefix
    i32.const 72328
    i32.add
    local.tee 0
    i32.store
    local.get 1
    i32.const 16
    i32.add
    local.get 0
    call $reflect.readVarint
    local.get 1
    i32.const 56
    i32.add
    local.get 1
    i32.load offset=20
    local.tee 0
    i32.store
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call $reflect.readVarint
    i32.const 0
    local.get 2
    i32.store offset=83624
    local.get 1
    i32.const 60
    i32.add
    local.get 1
    i32.load offset=12
    i32.store
    local.get 1
    i32.load offset=8
    local.set 0
    local.get 1
    i32.const 64
    i32.add
    global.set 0
    local.get 0)
  (func $_reflect.Type_.Elem (type 1) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 0
    i32.store offset=28
    local.get 1
    i64.const 2
    i64.store offset=20 align=4
    i32.const 0
    i32.load offset=83624
    local.set 2
    i32.const 0
    local.get 1
    i32.const 16
    i32.add
    i32.store offset=83624
    local.get 1
    local.get 2
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          call $_reflect.Type_.Kind
          i32.const -19
          i32.add
          br_table 0 (;@3;) 2 (;@1;) 0 (;@3;) 0 (;@3;) 1 (;@2;) 2 (;@1;)
        end
        local.get 0
        call $_reflect.Type_.stripPrefix
        local.set 0
        i32.const 0
        local.get 2
        i32.store offset=83624
        local.get 1
        i32.const 32
        i32.add
        global.set 0
        local.get 0
        return
      end
      local.get 1
      i32.const 24
      i32.add
      local.get 0
      call $_reflect.Type_.stripPrefix
      i32.const 72328
      i32.add
      local.tee 0
      i32.store
      local.get 1
      i32.const 8
      i32.add
      local.get 0
      call $reflect.readVarint
      i32.const 0
      local.get 2
      i32.store offset=83624
      local.get 1
      i32.const 28
      i32.add
      local.get 1
      i32.load offset=12
      i32.store
      local.get 1
      i32.load offset=8
      local.set 0
      local.get 1
      i32.const 32
      i32.add
      global.set 0
      local.get 0
      return
    end
    i32.const 34
    i32.const 65912
    call $runtime._panic
    unreachable)
  (func $_reflect.Type_.stripPrefix (type 1) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.const 5
    i32.shr_u
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 16
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 2
      i32.shl
      i32.const 72272
      i32.add
      i32.load
      return
    end
    local.get 1)
  (func $reflect.readVarint (type 4) (param i32 i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 2
    i32.const 0
    local.set 3
    loop  ;; label = @1
      i32.const 0
      local.get 1
      i32.load8_s
      local.tee 4
      i32.const 127
      i32.and
      local.get 3
      i32.shl
      local.get 3
      i32.const 31
      i32.gt_u
      select
      local.get 2
      i32.or
      local.set 2
      local.get 1
      i32.const 1
      i32.add
      local.set 1
      local.get 3
      i32.const 7
      i32.add
      local.set 3
      local.get 4
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store)
  (func $_reflect.Type_.Size (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 0
    i32.store offset=108
    local.get 1
    i64.const 0
    i64.store offset=100 align=4
    local.get 1
    i64.const 4
    i64.store offset=92 align=4
    i32.const 0
    i32.load offset=83624
    local.set 2
    i32.const 0
    local.get 1
    i32.const 88
    i32.add
    i32.store offset=83624
    local.get 1
    local.get 2
    i32.store offset=88
    i32.const 1
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      call $_reflect.Type_.Kind
                      i32.const -1
                      i32.add
                      br_table 8 (;@1;) 2 (;@7;) 8 (;@1;) 0 (;@9;) 2 (;@7;) 4 (;@5;) 2 (;@7;) 8 (;@1;) 0 (;@9;) 2 (;@7;) 4 (;@5;) 2 (;@7;) 2 (;@7;) 4 (;@5;) 4 (;@5;) 1 (;@8;) 4 (;@5;) 2 (;@7;) 2 (;@7;) 4 (;@5;) 2 (;@7;) 3 (;@6;) 5 (;@4;) 7 (;@2;) 2 (;@7;) 6 (;@3;) 7 (;@2;)
                    end
                    i32.const 2
                    local.set 3
                    br 7 (;@1;)
                  end
                  i32.const 16
                  local.set 3
                  br 6 (;@1;)
                end
                i32.const 4
                local.set 3
                br 5 (;@1;)
              end
              i32.const 12
              local.set 3
              br 4 (;@1;)
            end
            i32.const 8
            local.set 3
            br 3 (;@1;)
          end
          local.get 0
          call $_reflect.Type_.Elem
          call $_reflect.Type_.Size
          local.set 3
          local.get 0
          call $_reflect.Type_.Len
          local.set 0
          i32.const 0
          local.get 2
          i32.store offset=83624
          local.get 1
          i32.const 112
          i32.add
          global.set 0
          local.get 0
          local.get 3
          i32.mul
          return
        end
        i32.const 0
        local.set 3
        local.get 0
        call $_reflect.Type_.NumField
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const 48
        i32.add
        i32.const 8
        i32.add
        i64.const 0
        i64.store
        local.get 1
        i32.const 48
        i32.add
        i32.const 16
        i32.add
        i64.const 0
        i64.store
        local.get 1
        i32.const 69
        i32.add
        i64.const 0
        i64.store align=1
        local.get 1
        i32.const 0
        i32.store offset=80
        local.get 1
        i64.const 0
        i64.store offset=48
        local.get 1
        i32.const 88
        i32.add
        i32.const 8
        i32.add
        local.get 1
        i32.const 48
        i32.add
        i32.store
        local.get 1
        i32.const 8
        i32.add
        local.get 0
        local.get 4
        i32.const -1
        i32.add
        call $_reflect.Type_.Field
        local.get 1
        i32.const 108
        i32.add
        local.get 1
        i32.load offset=28
        i32.store
        local.get 1
        i32.const 88
        i32.add
        i32.const 16
        i32.add
        local.get 1
        i32.load offset=16
        i32.store
        local.get 1
        i32.const 100
        i32.add
        local.get 1
        i32.load offset=8
        i32.store
        local.get 1
        i32.load offset=40
        local.set 3
        local.get 1
        i32.load offset=24
        call $_reflect.Type_.Size
        local.set 0
        i32.const 0
        local.get 2
        i32.store offset=83624
        local.get 1
        i32.const 112
        i32.add
        global.set 0
        local.get 0
        local.get 3
        i32.add
        return
      end
      i32.const 34
      i32.const 66048
      call $runtime._panic
      unreachable
    end
    i32.const 0
    local.get 2
    i32.store offset=83624
    local.get 1
    i32.const 112
    i32.add
    global.set 0
    local.get 3)
  (func $_reflect.Type_.NumField (type 1) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 0
    i32.store offset=28
    local.get 1
    i64.const 0
    i64.store offset=20 align=4
    local.get 1
    i64.const 4
    i64.store offset=12 align=4
    i32.const 0
    i32.load offset=83624
    local.set 2
    i32.const 0
    local.get 1
    i32.const 8
    i32.add
    i32.store offset=83624
    local.get 1
    local.get 2
    i32.store offset=8
    block  ;; label = @1
      local.get 0
      call $_reflect.Type_.Kind
      i32.const 26
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      i32.const 8
      call $runtime.alloc
      local.tee 0
      i32.store
      local.get 1
      i32.const 20
      i32.add
      local.get 0
      i32.store
      local.get 0
      i32.const 8
      i32.store offset=4
      local.get 0
      i32.const 65999
      i32.store
      i32.const 2021
      local.get 0
      call $runtime._panic
      unreachable
    end
    local.get 1
    i32.const 24
    i32.add
    local.get 0
    call $_reflect.Type_.stripPrefix
    i32.const 72336
    i32.add
    local.tee 0
    i32.store
    local.get 1
    local.get 0
    call $reflect.readVarint
    i32.const 0
    local.get 2
    i32.store offset=83624
    local.get 1
    i32.const 28
    i32.add
    local.get 1
    i32.load offset=4
    i32.store
    local.get 1
    i32.load
    local.set 0
    local.get 1
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func $_reflect.Type_.Field (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 160
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i64.const 68719476736
    i64.store offset=88
    local.get 3
    i64.const 0
    i64.store offset=152
    local.get 3
    i64.const 0
    i64.store offset=144
    local.get 3
    i64.const 0
    i64.store offset=136
    local.get 3
    i64.const 0
    i64.store offset=128
    local.get 3
    i64.const 0
    i64.store offset=120
    local.get 3
    i64.const 0
    i64.store offset=112
    local.get 3
    i64.const 0
    i64.store offset=104
    local.get 3
    i64.const 0
    i64.store offset=96
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 3
    i32.const 88
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 4
    i32.store offset=88
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        call $_reflect.Type_.Kind
        i32.const 26
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        i32.const 88
        i32.add
        i32.const 16
        i32.add
        local.get 1
        call $_reflect.Type_.stripPrefix
        i32.const 72336
        i32.add
        local.tee 1
        i32.store
        local.get 3
        i32.const 40
        i32.add
        local.get 1
        call $reflect.readVarint
        local.get 3
        i32.const 108
        i32.add
        local.get 3
        i32.load offset=44
        local.tee 1
        i32.store
        local.get 3
        i32.load offset=40
        local.get 2
        i32.le_u
        br_if 1 (;@1;)
        local.get 3
        i32.const 56
        i32.add
        i64.const 0
        i64.store
        local.get 3
        i32.const 48
        i32.add
        i32.const 16
        i32.add
        i64.const 0
        i64.store
        local.get 3
        i32.const 69
        i32.add
        i64.const 0
        i64.store align=1
        local.get 3
        i32.const 0
        i32.store offset=80
        local.get 3
        i64.const 0
        i64.store offset=48
        local.get 3
        i32.const 112
        i32.add
        local.get 3
        i32.const 48
        i32.add
        i32.store
        local.get 3
        i32.const 152
        i32.add
        local.set 5
        local.get 3
        i32.const 156
        i32.add
        local.set 6
        local.get 3
        i32.const 148
        i32.add
        local.set 7
        local.get 3
        i32.const 120
        i32.add
        local.set 8
        local.get 3
        i32.const 116
        i32.add
        local.set 9
        local.get 3
        i32.const 124
        i32.add
        local.set 10
        local.get 3
        i32.const 128
        i32.add
        local.set 11
        local.get 3
        i32.const 132
        i32.add
        local.set 12
        local.get 3
        i32.const 144
        i32.add
        local.set 13
        local.get 3
        i32.const 136
        i32.add
        local.set 14
        local.get 3
        i32.const 140
        i32.add
        local.set 15
        i32.const 0
        local.set 16
        i32.const 0
        local.set 17
        i32.const 0
        local.set 18
        i32.const 0
        local.set 19
        i32.const 0
        local.set 20
        i32.const 0
        local.set 21
        i32.const 0
        local.set 22
        i32.const 0
        local.set 23
        i32.const 0
        local.set 24
        i32.const 0
        local.set 25
        i32.const 0
        local.set 26
        block  ;; label = @3
          loop  ;; label = @4
            local.get 5
            local.get 22
            i32.store
            local.get 6
            local.get 19
            i32.store
            local.get 7
            local.get 24
            i32.store
            local.get 8
            local.get 1
            i32.store
            local.get 9
            local.get 1
            i32.store
            local.get 26
            local.get 2
            i32.gt_s
            br_if 1 (;@3;)
            local.get 1
            i32.load8_u
            local.set 22
            local.get 3
            i32.const 32
            i32.add
            local.get 1
            i32.const 1
            i32.add
            call $reflect.readVarint
            local.get 10
            local.get 3
            i32.load offset=36
            local.tee 1
            i32.store
            local.get 3
            local.get 3
            i32.load offset=32
            local.tee 20
            i32.store offset=64
            i32.const 0
            local.set 18
            local.get 3
            local.get 25
            local.get 20
            call $_reflect.Type_.Align
            local.tee 19
            i32.add
            i32.const -1
            i32.add
            i32.const 0
            local.get 19
            i32.sub
            i32.and
            local.tee 16
            i32.store offset=80
            local.get 20
            call $_reflect.Type_.Size
            local.set 25
            local.get 3
            i32.const 24
            i32.add
            local.get 1
            call $reflect.readVarint
            local.get 11
            local.get 3
            i32.load offset=28
            local.tee 1
            i32.store
            local.get 3
            i32.const 16
            i32.add
            local.get 3
            i32.load offset=24
            call $reflect.readStringSidetable
            local.get 12
            local.get 3
            i32.load offset=16
            local.tee 24
            i32.store
            local.get 3
            local.get 22
            i32.const 1
            i32.and
            local.tee 17
            i32.store8 offset=76
            local.get 3
            local.get 3
            i32.load offset=20
            local.tee 23
            i32.store offset=52
            local.get 3
            local.get 24
            i32.store offset=48
            i32.const 72144
            local.set 19
            block  ;; label = @5
              local.get 22
              i32.const 2
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.const 8
              i32.add
              local.get 1
              call $reflect.readVarint
              local.get 14
              local.get 3
              i32.load offset=12
              local.tee 1
              i32.store
              local.get 3
              local.get 3
              i32.load offset=8
              call $reflect.readStringSidetable
              local.get 15
              local.get 3
              i32.load
              local.tee 19
              i32.store
              local.get 3
              i32.load offset=4
              local.set 18
            end
            local.get 16
            local.get 25
            i32.add
            local.set 25
            local.get 13
            local.get 1
            i32.store
            local.get 3
            local.get 18
            i32.store offset=72
            local.get 3
            local.get 19
            i32.store offset=68
            local.get 3
            i32.const 0
            i32.const 15
            local.get 22
            i32.const 4
            i32.and
            local.tee 22
            select
            local.tee 21
            i32.store offset=60
            local.get 3
            i32.const 72144
            i32.const 65984
            local.get 22
            select
            local.tee 22
            i32.store offset=56
            local.get 26
            i32.const 1
            i32.add
            local.set 26
            br 0 (;@4;)
          end
        end
        i32.const 0
        local.get 4
        i32.store offset=83624
        local.get 0
        local.get 16
        i32.store offset=32
        local.get 0
        local.get 17
        i32.const 1
        i32.and
        i32.store8 offset=28
        local.get 0
        local.get 18
        i32.store offset=24
        local.get 0
        local.get 19
        i32.store offset=20
        local.get 0
        local.get 20
        i32.store offset=16
        local.get 0
        local.get 21
        i32.store offset=12
        local.get 0
        local.get 22
        i32.store offset=8
        local.get 0
        local.get 23
        i32.store offset=4
        local.get 0
        local.get 24
        i32.store
        local.get 3
        i32.const 160
        i32.add
        global.set 0
        return
      end
      local.get 3
      i32.const 88
      i32.add
      i32.const 8
      i32.add
      i32.const 8
      call $runtime.alloc
      local.tee 1
      i32.store
      local.get 3
      i32.const 100
      i32.add
      local.get 1
      i32.store
      local.get 1
      i32.const 5
      i32.store offset=4
      local.get 1
      i32.const 65920
      i32.store
      i32.const 2021
      local.get 1
      call $runtime._panic
      unreachable
    end
    i32.const 34
    i32.const 65976
    call $runtime._panic
    unreachable)
  (func $runtime.slicePanic (type 3)
    i32.const 71488
    i32.const 18
    call $runtime.runtimePanic)
  (func $_reflect.Type_.Align (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i64.const 0
    i64.store offset=52 align=4
    local.get 1
    i64.const 3
    i64.store offset=44 align=4
    i32.const 0
    i32.load offset=83624
    local.set 2
    i32.const 0
    local.get 1
    i32.const 40
    i32.add
    i32.store offset=83624
    local.get 1
    local.get 2
    i32.store offset=40
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          i32.const 4
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  call $_reflect.Type_.Kind
                  i32.const -1
                  i32.add
                  br_table 0 (;@7;) 6 (;@1;) 0 (;@7;) 1 (;@6;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 0 (;@7;) 1 (;@6;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 6 (;@1;) 3 (;@4;) 5 (;@2;) 6 (;@1;) 2 (;@5;) 5 (;@2;)
                end
                i32.const 1
                local.set 3
                br 5 (;@1;)
              end
              i32.const 2
              local.set 3
              br 4 (;@1;)
            end
            i32.const 0
            local.set 4
            local.get 0
            call $_reflect.Type_.NumField
            local.tee 3
            i32.const 0
            local.get 3
            i32.const 0
            i32.gt_s
            select
            local.set 5
            local.get 1
            i32.const 56
            i32.add
            local.set 6
            local.get 1
            i32.const 52
            i32.add
            local.set 7
            local.get 1
            i32.const 48
            i32.add
            local.set 8
            i32.const 1
            local.set 3
            loop  ;; label = @5
              local.get 5
              local.get 4
              i32.eq
              br_if 4 (;@1;)
              local.get 1
              local.get 0
              local.get 4
              call $_reflect.Type_.Field
              local.get 6
              local.get 1
              i32.load offset=20
              i32.store
              local.get 7
              local.get 1
              i32.load offset=8
              i32.store
              local.get 8
              local.get 1
              i32.load
              i32.store
              local.get 1
              i32.load offset=16
              call $_reflect.Type_.Align
              local.tee 9
              local.get 3
              local.get 9
              local.get 3
              i32.gt_s
              select
              local.set 3
              local.get 4
              i32.const 1
              i32.add
              local.set 4
              br 0 (;@5;)
            end
          end
          local.get 0
          call $_reflect.Type_.Elem
          local.set 0
          br 0 (;@3;)
        end
      end
      i32.const 34
      i32.const 65856
      call $runtime._panic
      unreachable
    end
    i32.const 0
    local.get 2
    i32.store offset=83624
    local.get 1
    i32.const 64
    i32.add
    global.set 0
    local.get 3)
  (func $reflect.readStringSidetable (type 4) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.const 72496
    i32.add
    call $reflect.readVarint
    local.get 2
    local.get 2
    i32.load offset=4
    local.tee 1
    i32.store offset=8
    local.get 2
    local.get 2
    i32.load
    local.tee 3
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func $reflect.TypeOf (type 4) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    local.get 1
    call $reflect.ValueOf
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func $_reflect.Value_.Bool (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 3
    i64.const 0
    i64.store offset=36 align=4
    local.get 3
    i32.const 3
    i32.store offset=28
    local.get 3
    local.get 2
    i32.store8 offset=16
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 3
    i32.const 24
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 4
    i32.store offset=24
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    local.get 3
    i32.const 8
    i32.add
    i32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 1
        local.get 2
        call $_reflect.Value_.Kind
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        local.get 2
        call $_reflect.Value_.isIndirect
        i32.const 1
        i32.and
        br_if 1 (;@1;)
        i32.const 0
        local.get 4
        i32.store offset=83624
        local.get 3
        i32.const 48
        i32.add
        global.set 0
        local.get 1
        i32.const 0
        i32.ne
        return
      end
      local.get 3
      i32.const 36
      i32.add
      i32.const 8
      call $runtime.alloc
      local.tee 1
      i32.store
      local.get 3
      i32.const 40
      i32.add
      local.get 1
      i32.store
      local.get 1
      i32.const 4
      i32.store offset=4
      local.get 1
      i32.const 66057
      i32.store
      i32.const 997
      local.get 1
      call $runtime._panic
      unreachable
    end
    local.get 1
    i32.load8_u
    local.set 1
    i32.const 0
    local.get 4
    i32.store offset=83624
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 1)
  (func $_reflect.Value_.isIndirect (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    i32.const 8
    i32.add
    i32.const 0
    i32.store8
    local.get 3
    i64.const 0
    i64.store
    local.get 2
    i32.const 1
    i32.and)
  (func $_reflect.Value_.CanInterface (type 5) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    i32.const 8
    i32.add
    i32.const 0
    i32.store8
    local.get 3
    i64.const 0
    i64.store)
  (func $_reflect.Value_.Complex (type 7) (param i32 i32 i32 i32)
    (local i32 i32 f32 f64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i64.const 0
    i64.store offset=16 align=4
    local.get 4
    i64.const 0
    i64.store offset=36 align=4
    local.get 4
    i32.const 3
    i32.store offset=28
    local.get 4
    local.get 1
    i32.store offset=12
    i32.const 0
    i32.load offset=83624
    local.set 5
    i32.const 0
    local.get 4
    i32.const 24
    i32.add
    i32.store offset=83624
    local.get 4
    local.get 5
    i32.store offset=24
    local.get 4
    local.get 3
    i32.store8 offset=20
    local.get 4
    local.get 2
    i32.store offset=16
    local.get 4
    local.get 4
    i32.const 12
    i32.add
    i32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 2
          local.get 3
          call $_reflect.Value_.Kind
          i32.const -15
          i32.add
          br_table 1 (;@2;) 2 (;@1;) 0 (;@3;)
        end
        local.get 4
        i32.const 36
        i32.add
        i32.const 8
        call $runtime.alloc
        local.tee 2
        i32.store
        local.get 4
        i32.const 40
        i32.add
        local.get 2
        i32.store
        local.get 2
        i32.const 7
        i32.store offset=4
        local.get 2
        i32.const 66160
        i32.store
        i32.const 997
        local.get 2
        call $runtime._panic
        unreachable
      end
      local.get 1
      local.get 2
      local.get 3
      call $_reflect.Value_.isIndirect
      drop
      local.get 2
      f32.load
      local.set 6
      i32.const 0
      local.get 5
      i32.store offset=83624
      local.get 0
      local.get 2
      f32.load offset=4
      f64.promote_f32
      f64.store offset=8
      local.get 0
      local.get 6
      f64.promote_f32
      f64.store
      local.get 4
      i32.const 48
      i32.add
      global.set 0
      return
    end
    i32.const 0
    local.get 5
    i32.store offset=83624
    local.get 2
    f64.load
    local.set 7
    local.get 0
    local.get 2
    f64.load offset=8
    f64.store offset=8
    local.get 0
    local.get 7
    f64.store
    local.get 4
    i32.const 48
    i32.add
    global.set 0)
  (func $_reflect.Value_.Elem (type 7) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i64.const 0
    i64.store offset=8
    local.get 4
    i32.const 0
    i32.store offset=92
    local.get 4
    i64.const 0
    i64.store offset=84 align=4
    local.get 4
    i64.const 0
    i64.store offset=76 align=4
    local.get 4
    i64.const 0
    i64.store offset=68 align=4
    local.get 4
    i32.const 8
    i32.store offset=60
    local.get 4
    local.get 3
    i32.store8 offset=16
    i32.const 0
    i32.load offset=83624
    local.set 5
    i32.const 0
    local.get 4
    i32.const 56
    i32.add
    i32.store offset=83624
    local.get 4
    local.get 5
    i32.store offset=56
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    local.get 2
    i32.store offset=12
    local.get 4
    local.get 4
    i32.const 8
    i32.add
    i32.store offset=64
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 2
        local.get 3
        call $_reflect.Value_.Kind
        i32.const 21
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        local.set 6
        block  ;; label = @3
          local.get 1
          local.get 2
          local.get 3
          call $_reflect.Value_.isIndirect
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.const 68
          i32.add
          local.get 2
          i32.load
          local.tee 6
          i32.store
        end
        local.get 4
        i32.const 72
        i32.add
        local.get 6
        i32.store
        local.get 4
        i32.const 84
        i32.add
        local.get 6
        i32.store
        local.get 6
        br_if 1 (;@1;)
        i32.const 0
        local.get 5
        i32.store offset=83624
        local.get 4
        i32.const 32
        i32.add
        i32.const 0
        i32.store8
        local.get 4
        i64.const 0
        i64.store offset=24
        local.get 4
        i32.const 76
        i32.add
        local.get 4
        i32.const 24
        i32.add
        i32.store
        local.get 0
        i32.const 0
        i32.store8 offset=8
        local.get 0
        i64.const 0
        i64.store
        local.get 4
        i32.const 96
        i32.add
        global.set 0
        return
      end
      local.get 4
      i32.const 88
      i32.add
      i32.const 8
      call $runtime.alloc
      local.tee 2
      i32.store
      local.get 4
      i32.const 92
      i32.add
      local.get 2
      i32.store
      local.get 2
      i32.const 4
      i32.store offset=4
      local.get 2
      i32.const 66167
      i32.store
      i32.const 997
      local.get 2
      call $runtime._panic
      unreachable
    end
    local.get 4
    i32.const 48
    i32.add
    i32.const 0
    i32.store8
    local.get 4
    i64.const 0
    i64.store offset=40
    local.get 4
    i32.const 80
    i32.add
    local.get 4
    i32.const 40
    i32.add
    i32.store
    local.get 1
    local.get 2
    local.get 3
    call $_reflect.Value_.Type
    call $_reflect.Type_.Elem
    local.set 2
    i32.const 0
    local.get 5
    i32.store offset=83624
    local.get 0
    local.get 3
    i32.const 1
    i32.or
    i32.store8 offset=8
    local.get 0
    local.get 6
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
    local.get 4
    i32.const 96
    i32.add
    global.set 0)
  (func $_reflect.Value_.Field (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 224
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    i32.const 77
    i32.add
    i64.const 0
    i64.store align=1
    local.get 5
    i64.const 0
    i64.store offset=40
    local.get 5
    i64.const 0
    i64.store offset=172 align=4
    local.get 5
    i32.const 0
    i32.store offset=220
    local.get 5
    i64.const 0
    i64.store offset=212 align=4
    local.get 5
    i64.const 0
    i64.store offset=204 align=4
    local.get 5
    i64.const 0
    i64.store offset=196 align=4
    local.get 5
    i64.const 0
    i64.store offset=188 align=4
    local.get 5
    i64.const 0
    i64.store offset=180 align=4
    local.get 5
    i32.const 14
    i32.store offset=164
    local.get 5
    local.get 3
    i32.store8 offset=48
    local.get 5
    i32.const 0
    i32.store offset=88
    local.get 5
    i64.const 0
    i64.store offset=56
    local.get 5
    i64.const 0
    i64.store offset=64
    local.get 5
    i64.const 0
    i64.store offset=72
    i32.const 0
    i32.load offset=83624
    local.set 6
    i32.const 0
    local.get 5
    i32.const 160
    i32.add
    i32.store offset=83624
    local.get 5
    local.get 6
    i32.store offset=160
    local.get 5
    local.get 1
    i32.store offset=40
    local.get 5
    local.get 2
    i32.store offset=44
    local.get 5
    local.get 5
    i32.const 40
    i32.add
    i32.store offset=168
    local.get 5
    local.get 5
    i32.const 56
    i32.add
    i32.store offset=172
    local.get 5
    local.get 1
    local.get 2
    local.get 3
    call $_reflect.Value_.Type
    local.tee 7
    local.get 4
    call $_reflect.Type_.Field
    local.get 5
    i32.const 80
    i32.add
    local.get 5
    i32.load offset=24
    i32.store
    local.get 5
    i32.const 68
    i32.add
    local.get 5
    i32.load offset=12
    local.tee 8
    i32.store
    local.get 5
    local.get 5
    i32.load offset=8
    local.tee 1
    i32.store offset=188
    local.get 5
    local.get 5
    i32.load
    local.tee 9
    i32.store offset=176
    local.get 5
    local.get 5
    i32.load offset=20
    local.tee 4
    i32.store offset=184
    local.get 5
    local.get 1
    i32.store offset=180
    local.get 5
    local.get 5
    i32.load offset=32
    local.tee 10
    i32.store offset=88
    local.get 5
    local.get 4
    i32.store offset=76
    local.get 5
    local.get 5
    i32.load offset=16
    local.tee 4
    i32.store offset=72
    local.get 5
    local.get 1
    i32.store offset=64
    local.get 5
    local.get 5
    i32.load offset=4
    i32.store offset=60
    local.get 5
    local.get 9
    i32.store offset=56
    local.get 5
    local.get 5
    i32.load8_u offset=28
    i32.const 1
    i32.and
    i32.store8 offset=84
    local.get 3
    local.get 3
    i32.const -3
    i32.and
    local.get 1
    local.get 8
    i32.const 72144
    i32.const 0
    call $runtime.stringEqual
    i32.const 1
    i32.and
    select
    local.set 8
    local.get 7
    local.get 2
    local.get 3
    call $_reflect.Value_.Type
    local.tee 7
    call $_reflect.Type_.Size
    local.set 9
    local.get 4
    call $_reflect.Type_.Size
    local.set 1
    local.get 7
    local.get 2
    local.get 3
    call $_reflect.Value_.isIndirect
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 4
          i32.gt_u
          br_if 0 (;@3;)
          local.get 3
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 9
          i32.const 5
          i32.ge_u
          br_if 2 (;@1;)
          i32.const 0
          local.get 6
          i32.store offset=83624
          local.get 5
          i32.const 152
          i32.add
          i32.const 0
          i32.store8
          local.get 5
          i32.const 220
          i32.add
          i32.const -1
          i32.const 32
          local.get 1
          i32.const 3
          i32.shl
          i32.sub
          i32.shr_u
          i32.const 0
          local.get 2
          local.get 10
          i32.const 3
          i32.shl
          local.tee 3
          i32.shr_u
          local.get 3
          i32.const 31
          i32.gt_u
          select
          i32.and
          local.tee 3
          i32.store
          local.get 5
          i32.const 216
          i32.add
          local.get 3
          i32.store
          local.get 5
          i64.const 0
          i64.store offset=144
          local.get 5
          i32.const 212
          i32.add
          local.get 5
          i32.const 144
          i32.add
          i32.store
          local.get 0
          local.get 8
          i32.store8 offset=8
          local.get 0
          local.get 3
          i32.store offset=4
          local.get 0
          local.get 4
          i32.store
          local.get 5
          i32.const 224
          i32.add
          global.set 0
          return
        end
        i32.const 0
        local.get 6
        i32.store offset=83624
        local.get 5
        i32.const 104
        i32.add
        i32.const 0
        i32.store8
        local.get 5
        i64.const 0
        i64.store offset=96
        local.get 5
        i32.const 192
        i32.add
        local.get 5
        i32.const 96
        i32.add
        i32.store
        local.get 0
        local.get 8
        i32.store8 offset=8
        local.get 0
        local.get 2
        local.get 10
        i32.add
        i32.store offset=4
        local.get 0
        local.get 4
        i32.store
        local.get 5
        i32.const 224
        i32.add
        global.set 0
        return
      end
      i32.const 0
      local.get 6
      i32.store offset=83624
      local.get 5
      i32.const 120
      i32.add
      i32.const 0
      i32.store8
      local.get 5
      i64.const 0
      i64.store offset=112
      local.get 5
      i32.const 196
      i32.add
      local.get 5
      i32.const 112
      i32.add
      i32.store
      local.get 0
      local.get 8
      i32.store8 offset=8
      local.get 0
      i32.const 0
      i32.store offset=4
      local.get 0
      local.get 4
      i32.store
      local.get 5
      i32.const 224
      i32.add
      global.set 0
      return
    end
    local.get 5
    i32.const 200
    i32.add
    local.get 2
    local.get 10
    i32.add
    local.get 1
    call $reflect.loadValue
    local.tee 3
    i32.store
    local.get 5
    i32.const 208
    i32.add
    local.get 3
    i32.store
    local.get 5
    i32.const 136
    i32.add
    i32.const 0
    i32.store8
    i32.const 0
    local.get 6
    i32.store offset=83624
    local.get 5
    i32.const 204
    i32.add
    local.get 5
    i32.const 128
    i32.add
    i32.store
    local.get 5
    i64.const 0
    i64.store offset=128
    local.get 0
    i32.const 0
    i32.store8 offset=8
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store
    local.get 5
    i32.const 224
    i32.add
    global.set 0)
  (func $runtime.stringEqual (type 0) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 4
    block  ;; label = @1
      local.get 1
      local.get 3
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      local.get 1
      i32.const 0
      i32.gt_s
      select
      local.set 1
      i32.const 1
      local.set 4
      loop  ;; label = @2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const -1
        i32.add
        local.set 1
        local.get 2
        i32.load8_u
        local.set 3
        local.get 0
        i32.load8_u
        local.set 5
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 5
        local.get 3
        i32.eq
        br_if 0 (;@2;)
      end
      i32.const 0
      local.set 4
    end
    local.get 4)
  (func $reflect.loadValue (type 9) (param i32 i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 2
    i32.const 0
    local.set 3
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.get 0
        i32.load8_u
        local.get 3
        i32.shl
        local.get 3
        i32.const 31
        i32.gt_u
        select
        local.get 2
        i32.or
        local.set 2
        local.get 1
        i32.const -1
        i32.add
        local.set 1
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 3
        i32.const 8
        i32.add
        local.set 3
        br 0 (;@2;)
      end
    end
    local.get 2)
  (func $_reflect.Value_.Float (type 10) (param i32 i32 i32) (result f64)
    (local i32 i32 f64 f32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i64.const 0
    i64.store offset=8 align=4
    local.get 3
    i64.const 0
    i64.store offset=36 align=4
    local.get 3
    i64.const 0
    i64.store offset=28 align=4
    local.get 3
    i32.const 5
    i32.store offset=20
    local.get 3
    local.get 0
    i32.store offset=4
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 3
    i32.const 16
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 4
    i32.store offset=16
    local.get 3
    local.get 2
    i32.store8 offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 1
            local.get 2
            call $_reflect.Value_.Kind
            i32.const -13
            i32.add
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          local.get 3
          i32.const 28
          i32.add
          i32.const 8
          call $runtime.alloc
          local.tee 1
          i32.store
          local.get 3
          i32.const 32
          i32.add
          local.get 1
          i32.store
          local.get 1
          i32.const 5
          i32.store offset=4
          local.get 1
          i32.const 66171
          i32.store
          i32.const 997
          local.get 1
          call $runtime._panic
          unreachable
        end
        local.get 0
        local.get 1
        local.get 2
        call $_reflect.Value_.isIndirect
        i32.const 1
        i32.and
        br_if 1 (;@1;)
        i32.const 0
        local.get 4
        i32.store offset=83624
        local.get 3
        i32.const 36
        i32.add
        local.get 3
        i32.const 8
        i32.add
        local.tee 2
        i32.store
        local.get 3
        i32.const 40
        i32.add
        local.get 2
        i32.store
        local.get 3
        i32.const 48
        i32.add
        global.set 0
        local.get 1
        f32.reinterpret_i32
        f64.promote_f32
        return
      end
      local.get 0
      local.get 1
      local.get 2
      call $_reflect.Value_.isIndirect
      drop
      i32.const 0
      local.get 4
      i32.store offset=83624
      local.get 1
      f64.load
      local.set 5
      local.get 3
      i32.const 48
      i32.add
      global.set 0
      local.get 5
      return
    end
    local.get 1
    f32.load
    local.set 6
    i32.const 0
    local.get 4
    i32.store offset=83624
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 6
    f64.promote_f32)
  (func $_reflect.Value_.Index (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 240
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    i64.const 0
    i64.store offset=8
    local.get 5
    i64.const 90194313216
    i64.store offset=144
    local.get 5
    i64.const 0
    i64.store offset=152
    local.get 5
    i32.const 0
    i32.store offset=232
    local.get 5
    i64.const 0
    i64.store offset=224
    local.get 5
    i64.const 0
    i64.store offset=216
    local.get 5
    i64.const 0
    i64.store offset=208
    local.get 5
    i64.const 0
    i64.store offset=200
    local.get 5
    i64.const 0
    i64.store offset=192
    local.get 5
    i64.const 0
    i64.store offset=184
    local.get 5
    i64.const 0
    i64.store offset=176
    local.get 5
    i64.const 0
    i64.store offset=168
    local.get 5
    i64.const 0
    i64.store offset=160
    local.get 5
    local.get 3
    i32.store8 offset=16
    i32.const 0
    i32.load offset=83624
    local.set 6
    i32.const 0
    local.get 5
    i32.const 144
    i32.add
    i32.store offset=83624
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 2
    i32.store offset=12
    local.get 5
    local.get 6
    i32.store offset=144
    local.get 5
    local.get 5
    i32.const 8
    i32.add
    i32.store offset=152
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  local.get 2
                  local.get 3
                  call $_reflect.Value_.Kind
                  i32.const -17
                  i32.add
                  br_table 1 (;@6;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 2 (;@5;) 0 (;@7;) 3 (;@4;) 2 (;@5;)
                end
                local.get 5
                local.get 2
                i32.load offset=4
                local.tee 7
                i32.store offset=28
                local.get 5
                local.get 2
                i32.load offset=8
                i32.store offset=32
                local.get 5
                i32.const 156
                i32.add
                local.get 5
                i32.const 24
                i32.add
                i32.store
                local.get 5
                local.get 2
                i32.load
                local.tee 8
                i32.store offset=24
                local.get 7
                local.get 4
                i32.le_u
                br_if 3 (;@3;)
                local.get 5
                i32.const 48
                i32.add
                i32.const 0
                i32.store8
                local.get 5
                i64.const 0
                i64.store offset=40
                local.get 5
                i32.const 160
                i32.add
                local.get 5
                i32.const 40
                i32.add
                i32.store
                local.get 1
                local.get 2
                local.get 3
                call $_reflect.Value_.Type
                call $_reflect.Type_.Elem
                i32.const 0
                local.get 3
                i32.const 1
                i32.or
                local.tee 3
                call $_reflect.Value_.Type
                local.tee 1
                call $_reflect.Type_.Size
                local.set 2
                i32.const 0
                local.get 6
                i32.store offset=83624
                local.get 5
                i32.const 164
                i32.add
                local.get 2
                local.get 4
                i32.mul
                local.get 8
                i32.add
                local.tee 2
                i32.store
                local.get 5
                i32.const 168
                i32.add
                local.get 2
                i32.store
                local.get 0
                local.get 3
                i32.store8 offset=8
                local.get 0
                local.get 2
                i32.store offset=4
                local.get 0
                local.get 1
                i32.store
                local.get 5
                i32.const 240
                i32.add
                global.set 0
                return
              end
              local.get 5
              local.get 2
              i32.load offset=4
              local.tee 3
              i32.store offset=60
              local.get 5
              i32.const 172
              i32.add
              local.get 5
              i32.const 56
              i32.add
              i32.store
              local.get 5
              local.get 2
              i32.load
              local.tee 2
              i32.store offset=56
              local.get 3
              local.get 4
              i32.le_u
              br_if 3 (;@2;)
              local.get 5
              i32.const 72
              i32.add
              i32.const 0
              i32.store8
              local.get 5
              i32.const 184
              i32.add
              local.get 2
              local.get 4
              i32.add
              local.tee 2
              i32.store
              local.get 5
              i32.const 180
              i32.add
              local.get 2
              i32.store
              local.get 5
              i64.const 0
              i64.store offset=64
              local.get 5
              i32.const 176
              i32.add
              local.get 5
              i32.const 64
              i32.add
              i32.store
              local.get 5
              i32.const 188
              i32.add
              local.get 2
              i32.load8_u
              local.tee 2
              i32.store
              local.get 5
              i32.const 192
              i32.add
              local.get 2
              i32.store
              i32.const 0
              local.get 6
              i32.store offset=83624
              local.get 0
              i32.const 0
              i32.store8 offset=8
              local.get 0
              local.get 2
              i32.store offset=4
              local.get 0
              i32.const 16
              i32.store
              local.get 5
              i32.const 240
              i32.add
              global.set 0
              return
            end
            local.get 5
            i32.const 212
            i32.add
            i32.const 8
            call $runtime.alloc
            local.tee 2
            i32.store
            local.get 5
            i32.const 216
            i32.add
            local.get 2
            i32.store
            local.get 2
            i32.const 5
            i32.store offset=4
            local.get 2
            i32.const 66272
            i32.store
            i32.const 997
            local.get 2
            call $runtime._panic
            unreachable
          end
          local.get 1
          local.get 2
          local.get 3
          call $_reflect.Value_.Type
          local.tee 7
          call $_reflect.Type_.Elem
          call $_reflect.Type_.Size
          local.set 1
          local.get 7
          local.get 2
          local.get 3
          call $_reflect.Value_.Type
          local.tee 7
          call $_reflect.Type_.Size
          local.tee 8
          br_if 2 (;@1;)
          local.get 5
          i32.const 88
          i32.add
          i32.const 0
          i32.store8
          local.get 5
          i64.const 0
          i64.store offset=80
          local.get 5
          i32.const 196
          i32.add
          local.get 5
          i32.const 80
          i32.add
          i32.store
          local.get 7
          local.get 2
          local.get 3
          call $_reflect.Value_.Type
          call $_reflect.Type_.Elem
          local.set 2
          i32.const 0
          local.get 6
          i32.store offset=83624
          local.get 0
          local.get 3
          i32.store8 offset=8
          local.get 0
          i32.const 0
          i32.store offset=4
          local.get 0
          local.get 2
          i32.store
          local.get 5
          i32.const 240
          i32.add
          global.set 0
          return
        end
        i32.const 34
        i32.const 66216
        call $runtime._panic
        unreachable
      end
      i32.const 34
      i32.const 66264
      call $runtime._panic
      unreachable
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 4
        i32.gt_u
        br_if 0 (;@2;)
        local.get 8
        i32.const 4
        i32.gt_u
        br_if 1 (;@1;)
        local.get 5
        i32.const 136
        i32.add
        i32.const 0
        i32.store8
        local.get 5
        i64.const 0
        i64.store offset=128
        local.get 5
        i32.const 200
        i32.add
        local.get 5
        i32.const 128
        i32.add
        i32.store
        local.get 7
        local.get 2
        local.get 3
        call $_reflect.Value_.Type
        call $_reflect.Type_.Elem
        local.set 7
        i32.const 0
        local.get 6
        i32.store offset=83624
        local.get 5
        i32.const 204
        i32.add
        i32.const -1
        i32.const 32
        local.get 1
        i32.const 3
        i32.shl
        i32.sub
        i32.shr_u
        i32.const 0
        local.get 1
        select
        i32.const 0
        local.get 2
        local.get 1
        local.get 4
        i32.mul
        i32.const 3
        i32.shl
        local.tee 1
        i32.shr_u
        local.get 1
        i32.const 31
        i32.gt_u
        select
        i32.and
        local.tee 2
        i32.store
        local.get 5
        i32.const 208
        i32.add
        local.get 2
        i32.store
        local.get 0
        local.get 3
        i32.store8 offset=8
        local.get 0
        local.get 2
        i32.store offset=4
        local.get 0
        local.get 7
        i32.store
        local.get 5
        i32.const 240
        i32.add
        global.set 0
        return
      end
      local.get 5
      i32.const 104
      i32.add
      i32.const 0
      i32.store8
      local.get 5
      i64.const 0
      i64.store offset=96
      local.get 5
      i32.const 220
      i32.add
      local.get 5
      i32.const 96
      i32.add
      i32.store
      local.get 7
      local.get 2
      local.get 3
      call $_reflect.Value_.Type
      call $_reflect.Type_.Elem
      local.set 7
      i32.const 0
      local.get 6
      i32.store offset=83624
      local.get 0
      local.get 3
      i32.store8 offset=8
      local.get 0
      local.get 2
      local.get 1
      local.get 4
      i32.mul
      i32.add
      i32.store offset=4
      local.get 0
      local.get 7
      i32.store
      local.get 5
      i32.const 240
      i32.add
      global.set 0
      return
    end
    local.get 5
    i32.const 120
    i32.add
    i32.const 0
    i32.store8
    local.get 5
    i64.const 0
    i64.store offset=112
    local.get 5
    i32.const 224
    i32.add
    local.get 5
    i32.const 112
    i32.add
    i32.store
    local.get 7
    local.get 2
    local.get 3
    call $_reflect.Value_.Type
    call $_reflect.Type_.Elem
    local.set 7
    local.get 5
    i32.const 228
    i32.add
    local.get 2
    local.get 1
    local.get 4
    i32.mul
    i32.add
    local.get 1
    call $reflect.loadValue
    local.tee 2
    i32.store
    local.get 5
    i32.const 232
    i32.add
    local.get 2
    i32.store
    i32.const 0
    local.get 6
    i32.store offset=83624
    local.get 0
    local.get 3
    i32.store8 offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 7
    i32.store
    local.get 5
    i32.const 240
    i32.add
    global.set 0)
  (func $_reflect.Value_.Int (type 11) (param i32 i32 i32) (result i64)
    (local i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 3
    i64.const 0
    i64.store offset=36 align=4
    local.get 3
    i32.const 3
    i32.store offset=28
    local.get 3
    local.get 2
    i32.store8 offset=16
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 3
    i32.const 24
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 4
    i32.store offset=24
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    local.get 3
    i32.const 8
    i32.add
    i32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        local.get 1
                        local.get 2
                        call $_reflect.Value_.Kind
                        i32.const -2
                        i32.add
                        br_table 1 (;@9;) 2 (;@8;) 3 (;@7;) 4 (;@6;) 5 (;@5;) 0 (;@10;)
                      end
                      local.get 3
                      i32.const 36
                      i32.add
                      i32.const 8
                      call $runtime.alloc
                      local.tee 1
                      i32.store
                      local.get 3
                      i32.const 40
                      i32.add
                      local.get 1
                      i32.store
                      local.get 1
                      i32.const 3
                      i32.store offset=4
                      local.get 1
                      i32.const 66277
                      i32.store
                      i32.const 997
                      local.get 1
                      call $runtime._panic
                      unreachable
                    end
                    local.get 0
                    local.get 1
                    local.get 2
                    call $_reflect.Value_.isIndirect
                    i32.const 1
                    i32.and
                    br_if 4 (;@4;)
                    i32.const 0
                    local.get 4
                    i32.store offset=83624
                    local.get 3
                    i32.const 48
                    i32.add
                    global.set 0
                    local.get 1
                    i64.extend_i32_s
                    return
                  end
                  local.get 0
                  local.get 1
                  local.get 2
                  call $_reflect.Value_.isIndirect
                  i32.const 1
                  i32.and
                  br_if 4 (;@3;)
                  i32.const 0
                  local.get 4
                  i32.store offset=83624
                  local.get 3
                  i32.const 48
                  i32.add
                  global.set 0
                  local.get 1
                  i64.extend_i32_u
                  i64.const 56
                  i64.shl
                  i64.const 56
                  i64.shr_s
                  return
                end
                local.get 0
                local.get 1
                local.get 2
                call $_reflect.Value_.isIndirect
                i32.const 1
                i32.and
                br_if 4 (;@2;)
                i32.const 0
                local.get 4
                i32.store offset=83624
                local.get 3
                i32.const 48
                i32.add
                global.set 0
                local.get 1
                i64.extend_i32_u
                i64.const 48
                i64.shl
                i64.const 48
                i64.shr_s
                return
              end
              local.get 0
              local.get 1
              local.get 2
              call $_reflect.Value_.isIndirect
              i32.const 1
              i32.and
              br_if 4 (;@1;)
              i32.const 0
              local.get 4
              i32.store offset=83624
              local.get 3
              i32.const 48
              i32.add
              global.set 0
              local.get 1
              i64.extend_i32_s
              return
            end
            local.get 0
            local.get 1
            local.get 2
            call $_reflect.Value_.isIndirect
            drop
            i32.const 0
            local.get 4
            i32.store offset=83624
            local.get 1
            i64.load
            local.set 5
            local.get 3
            i32.const 48
            i32.add
            global.set 0
            local.get 5
            return
          end
          local.get 1
          i64.load32_s
          local.set 5
          i32.const 0
          local.get 4
          i32.store offset=83624
          local.get 3
          i32.const 48
          i32.add
          global.set 0
          local.get 5
          return
        end
        local.get 1
        i64.load8_s
        local.set 5
        i32.const 0
        local.get 4
        i32.store offset=83624
        local.get 3
        i32.const 48
        i32.add
        global.set 0
        local.get 5
        return
      end
      local.get 1
      i64.load16_s
      local.set 5
      i32.const 0
      local.get 4
      i32.store offset=83624
      local.get 3
      i32.const 48
      i32.add
      global.set 0
      local.get 5
      return
    end
    local.get 1
    i64.load32_s
    local.set 5
    i32.const 0
    local.get 4
    i32.store offset=83624
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 5)
  (func $_reflect.Value_.Interface (type 7) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i64.const 0
    i64.store
    local.get 4
    i32.const 0
    i32.store offset=60
    local.get 4
    i64.const 0
    i64.store offset=52 align=4
    local.get 4
    i64.const 0
    i64.store offset=44 align=4
    local.get 4
    i64.const 0
    i64.store offset=36 align=4
    local.get 4
    i32.const 8
    i32.store offset=28
    local.get 4
    local.get 3
    i32.store8 offset=8
    i32.const 0
    i32.load offset=83624
    local.set 5
    i32.const 0
    local.get 4
    i32.const 24
    i32.add
    i32.store offset=83624
    local.get 4
    local.get 5
    i32.store offset=24
    local.get 4
    local.get 1
    i32.store
    local.get 4
    local.get 2
    i32.store offset=4
    local.get 4
    local.get 4
    i32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 2
        local.get 3
        call $_reflect.Value_.isIndirect
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 2
        local.get 3
        call $_reflect.Value_.Type
        local.tee 6
        call $_reflect.Type_.Size
        i32.const 4
        i32.gt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const -1
        i32.add
        local.set 7
        i32.const 0
        local.set 8
        local.get 6
        local.get 2
        local.get 3
        call $_reflect.Value_.Type
        call $_reflect.Type_.Size
        local.set 2
        local.get 4
        i32.const 36
        i32.add
        local.set 6
        local.get 4
        i32.const 40
        i32.add
        local.set 9
        block  ;; label = @3
          loop  ;; label = @4
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
            local.get 6
            local.get 7
            local.get 2
            i32.add
            local.tee 3
            i32.store
            local.get 9
            local.get 3
            i32.store
            local.get 8
            i32.const 8
            i32.shl
            local.get 3
            i32.load8_u
            i32.or
            local.set 8
            local.get 2
            i32.const -1
            i32.add
            local.set 2
            br 0 (;@4;)
          end
        end
        local.get 4
        i32.const 44
        i32.add
        local.get 8
        i32.store
        local.get 4
        local.get 8
        i32.store offset=4
        br 1 (;@1;)
      end
      local.get 2
      local.set 8
    end
    local.get 4
    i32.const 56
    i32.add
    local.get 8
    i32.store
    local.get 4
    i32.const 60
    i32.add
    local.get 8
    i32.store
    local.get 4
    i32.const 48
    i32.add
    local.get 8
    i32.store
    i32.const 0
    local.get 5
    i32.store offset=83624
    local.get 4
    i32.const 52
    i32.add
    local.get 4
    i32.const 16
    i32.add
    i32.store
    local.get 0
    local.get 8
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 4
    i32.const 64
    i32.add
    global.set 0)
  (func $_reflect.Value_.IsNil (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i64.const 0
    i64.store
    local.get 3
    i32.const 0
    i32.store offset=60
    local.get 3
    i64.const 0
    i64.store offset=52 align=4
    local.get 3
    i64.const 0
    i64.store offset=44 align=4
    local.get 3
    i64.const 0
    i64.store offset=36 align=4
    local.get 3
    i32.const 8
    i32.store offset=28
    local.get 3
    local.get 2
    i32.store8 offset=8
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 3
    i32.const 24
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 4
    i32.store offset=24
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    local.get 3
    i32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  local.get 1
                  local.get 2
                  call $_reflect.Value_.Kind
                  i32.const -19
                  i32.add
                  br_table 1 (;@6;) 4 (;@3;) 1 (;@6;) 3 (;@4;) 0 (;@7;) 2 (;@5;) 1 (;@6;) 0 (;@7;)
                end
                local.get 3
                i32.const 36
                i32.add
                i32.const 8
                call $runtime.alloc
                local.tee 1
                i32.store
                local.get 3
                i32.const 40
                i32.add
                local.get 1
                i32.store
                local.get 1
                i32.const 5
                i32.store offset=4
                local.get 1
                i32.const 66280
                i32.store
                i32.const 997
                local.get 1
                call $runtime._panic
                unreachable
              end
              local.get 0
              local.get 1
              local.get 2
              call $_reflect.Value_.isIndirect
              i32.const 1
              i32.and
              br_if 3 (;@2;)
              i32.const 0
              local.get 4
              i32.store offset=83624
              local.get 3
              i32.const 64
              i32.add
              global.set 0
              local.get 1
              i32.eqz
              return
            end
            local.get 1
            i32.eqz
            br_if 3 (;@1;)
            i32.const 0
            local.get 4
            i32.store offset=83624
            local.get 3
            i32.const 44
            i32.add
            local.get 1
            i32.load offset=4
            local.tee 1
            i32.store
            local.get 3
            i32.const 64
            i32.add
            global.set 0
            local.get 1
            i32.eqz
            return
          end
          local.get 1
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          i32.load
          local.set 1
          i32.const 0
          local.get 4
          i32.store offset=83624
          local.get 3
          i32.const 64
          i32.add
          global.set 0
          local.get 1
          i32.eqz
          return
        end
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.const 60
        i32.add
        local.get 1
        i32.load offset=4
        local.tee 1
        i32.store
        local.get 3
        i32.const 56
        i32.add
        local.get 1
        i32.store
        local.get 3
        i32.const 48
        i32.add
        local.get 1
        i32.store
        i32.const 0
        local.get 4
        i32.store offset=83624
        local.get 3
        i32.const 52
        i32.add
        local.get 3
        i32.const 16
        i32.add
        i32.store
        local.get 3
        i32.const 64
        i32.add
        global.set 0
        local.get 1
        i32.eqz
        return
      end
      local.get 1
      i32.load
      local.set 1
      i32.const 0
      local.get 4
      i32.store offset=83624
      local.get 3
      i32.const 64
      i32.add
      global.set 0
      local.get 1
      i32.eqz
      return
    end
    i32.const 0
    local.get 4
    i32.store offset=83624
    local.get 3
    i32.const 64
    i32.add
    global.set 0
    i32.const 1)
  (func $_reflect.Value_.IsValid (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    i32.const 8
    i32.add
    i32.const 0
    i32.store8
    local.get 3
    i64.const 0
    i64.store
    local.get 0
    i32.const 0
    i32.ne)
  (func $_reflect.Value_.MapRange (type 5) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 8
    i32.add
    i32.const 0
    i32.store8
    local.get 3
    i32.const 1
    i32.store offset=20
    local.get 3
    i64.const 0
    i64.store
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 3
    i32.const 16
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 4
    i32.store offset=16
    local.get 3
    local.get 3
    i32.store offset=24
    i32.const 34
    i32.const 66336
    call $runtime._panic
    unreachable)
  (func $_reflect.Value_.NumField (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 8
    i32.add
    i32.const 0
    i32.store8
    local.get 3
    i32.const 1
    i32.store offset=20
    local.get 3
    i64.const 0
    i64.store
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 3
    i32.const 16
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 4
    i32.store offset=16
    local.get 3
    local.get 3
    i32.store offset=24
    local.get 0
    local.get 1
    local.get 2
    call $_reflect.Value_.Type
    call $_reflect.Type_.NumField
    local.set 0
    i32.const 0
    local.get 4
    i32.store offset=83624
    local.get 3
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func $_reflect.Value_.Pointer (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 3
    i64.const 0
    i64.store offset=36 align=4
    local.get 3
    i32.const 3
    i32.store offset=28
    local.get 3
    local.get 2
    i32.store8 offset=16
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 3
    i32.const 24
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 4
    i32.store offset=24
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    local.get 3
    i32.const 8
    i32.add
    i32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                local.get 1
                local.get 2
                call $_reflect.Value_.Kind
                local.tee 5
                i32.const 25
                i32.gt_u
                br_if 0 (;@6;)
                i32.const 1
                local.get 5
                i32.shl
                i32.const 36438016
                i32.and
                br_if 1 (;@5;)
                local.get 5
                i32.const 22
                i32.eq
                br_if 2 (;@4;)
                local.get 5
                i32.const 24
                i32.eq
                br_if 3 (;@3;)
              end
              local.get 3
              i32.const 36
              i32.add
              i32.const 8
              call $runtime.alloc
              local.tee 1
              i32.store
              local.get 3
              i32.const 40
              i32.add
              local.get 1
              i32.store
              local.get 1
              i32.const 7
              i32.store offset=4
              local.get 1
              i32.const 66400
              i32.store
              i32.const 997
              local.get 1
              call $runtime._panic
              unreachable
            end
            local.get 0
            local.get 1
            local.get 2
            call $_reflect.Value_.isIndirect
            i32.const 1
            i32.and
            br_if 2 (;@2;)
            i32.const 0
            local.get 4
            i32.store offset=83624
            local.get 3
            i32.const 48
            i32.add
            global.set 0
            local.get 1
            return
          end
          local.get 1
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          i32.load
          local.set 1
          i32.const 0
          local.get 4
          i32.store offset=83624
          local.get 3
          i32.const 48
          i32.add
          global.set 0
          local.get 1
          return
        end
        i32.const 34
        i32.const 66392
        call $runtime._panic
        unreachable
      end
      local.get 1
      i32.load
      local.set 1
      i32.const 0
      local.get 4
      i32.store offset=83624
      local.get 3
      i32.const 48
      i32.add
      global.set 0
      local.get 1
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $_reflect.Value_.String (type 7) (param i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i64.const 0
    i64.store
    local.get 4
    local.get 3
    i32.store8 offset=8
    local.get 4
    local.get 2
    i32.store offset=4
    local.get 4
    local.get 1
    i32.store
    block  ;; label = @1
      local.get 1
      local.get 2
      local.get 3
      call $_reflect.Value_.Kind
      i32.const 17
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 3
      i32.store offset=4
      local.get 0
      i32.const 66407
      i32.store
      local.get 4
      i32.const 16
      i32.add
      global.set 0
      return
    end
    local.get 0
    local.get 2
    i64.load align=4
    i64.store
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func $_reflect.Value_.Uint (type 11) (param i32 i32 i32) (result i64)
    (local i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 3
    i64.const 0
    i64.store offset=36 align=4
    local.get 3
    i32.const 3
    i32.store offset=28
    local.get 3
    local.get 2
    i32.store8 offset=16
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 3
    i32.const 24
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 4
    i32.store offset=24
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    local.get 3
    i32.const 8
    i32.add
    i32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            local.get 1
                            local.get 2
                            call $_reflect.Value_.Kind
                            i32.const -7
                            i32.add
                            br_table 4 (;@8;) 2 (;@10;) 3 (;@9;) 5 (;@7;) 6 (;@6;) 1 (;@11;) 0 (;@12;)
                          end
                          local.get 3
                          i32.const 36
                          i32.add
                          i32.const 8
                          call $runtime.alloc
                          local.tee 1
                          i32.store
                          local.get 3
                          i32.const 40
                          i32.add
                          local.get 1
                          i32.store
                          local.get 1
                          i32.const 4
                          i32.store offset=4
                          local.get 1
                          i32.const 66410
                          i32.store
                          i32.const 997
                          local.get 1
                          call $runtime._panic
                          unreachable
                        end
                        local.get 0
                        local.get 1
                        local.get 2
                        call $_reflect.Value_.isIndirect
                        i32.const 1
                        i32.and
                        br_if 5 (;@5;)
                        i32.const 0
                        local.get 4
                        i32.store offset=83624
                        local.get 3
                        i32.const 48
                        i32.add
                        global.set 0
                        local.get 1
                        i64.extend_i32_u
                        return
                      end
                      local.get 0
                      local.get 1
                      local.get 2
                      call $_reflect.Value_.isIndirect
                      i32.const 1
                      i32.and
                      br_if 5 (;@4;)
                      i32.const 0
                      local.get 4
                      i32.store offset=83624
                      local.get 3
                      i32.const 48
                      i32.add
                      global.set 0
                      local.get 1
                      i64.extend_i32_u
                      return
                    end
                    local.get 0
                    local.get 1
                    local.get 2
                    call $_reflect.Value_.isIndirect
                    i32.const 1
                    i32.and
                    br_if 5 (;@3;)
                    i32.const 0
                    local.get 4
                    i32.store offset=83624
                    local.get 3
                    i32.const 48
                    i32.add
                    global.set 0
                    local.get 1
                    i64.extend_i32_u
                    return
                  end
                  local.get 0
                  local.get 1
                  local.get 2
                  call $_reflect.Value_.isIndirect
                  i32.const 1
                  i32.and
                  br_if 5 (;@2;)
                  i32.const 0
                  local.get 4
                  i32.store offset=83624
                  local.get 3
                  i32.const 48
                  i32.add
                  global.set 0
                  local.get 1
                  i64.extend_i32_u
                  return
                end
                local.get 0
                local.get 1
                local.get 2
                call $_reflect.Value_.isIndirect
                i32.const 1
                i32.and
                br_if 5 (;@1;)
                i32.const 0
                local.get 4
                i32.store offset=83624
                local.get 3
                i32.const 48
                i32.add
                global.set 0
                local.get 1
                i64.extend_i32_u
                return
              end
              local.get 0
              local.get 1
              local.get 2
              call $_reflect.Value_.isIndirect
              drop
              i32.const 0
              local.get 4
              i32.store offset=83624
              local.get 1
              i64.load
              local.set 5
              local.get 3
              i32.const 48
              i32.add
              global.set 0
              local.get 5
              return
            end
            local.get 1
            i64.load32_u
            local.set 5
            i32.const 0
            local.get 4
            i32.store offset=83624
            local.get 3
            i32.const 48
            i32.add
            global.set 0
            local.get 5
            return
          end
          local.get 1
          i64.load8_u
          local.set 5
          i32.const 0
          local.get 4
          i32.store offset=83624
          local.get 3
          i32.const 48
          i32.add
          global.set 0
          local.get 5
          return
        end
        local.get 1
        i64.load16_u
        local.set 5
        i32.const 0
        local.get 4
        i32.store offset=83624
        local.get 3
        i32.const 48
        i32.add
        global.set 0
        local.get 5
        return
      end
      local.get 1
      i64.load32_u
      local.set 5
      i32.const 0
      local.get 4
      i32.store offset=83624
      local.get 3
      i32.const 48
      i32.add
      global.set 0
      local.get 5
      return
    end
    local.get 1
    i64.load32_u
    local.set 5
    i32.const 0
    local.get 4
    i32.store offset=83624
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 5)
  (func $sort.Stable (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i64.const 1
    i64.store offset=4 align=4
    i32.const 0
    local.set 2
    i32.const 0
    i32.load offset=83624
    local.set 3
    i32.const 0
    local.get 1
    i32.store offset=83624
    local.get 1
    local.get 3
    i32.store
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 8
      i32.add
      local.get 0
      i32.load
      i32.store
      local.get 0
      i32.load offset=4
      local.set 4
      block  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i32.const 20
          i32.add
          local.tee 5
          local.get 4
          i32.gt_s
          br_if 1 (;@2;)
          local.get 0
          local.get 2
          local.get 5
          call $sort.insertionSort
          local.get 5
          local.set 2
          br 0 (;@3;)
        end
      end
      local.get 0
      local.get 2
      local.get 4
      call $sort.insertionSort
      i32.const 20
      local.set 6
      block  ;; label = @2
        loop  ;; label = @3
          local.get 6
          local.get 4
          i32.ge_s
          br_if 1 (;@2;)
          local.get 6
          i32.const 1
          i32.shl
          local.set 7
          i32.const 0
          local.set 2
          block  ;; label = @4
            loop  ;; label = @5
              local.get 6
              local.get 2
              i32.add
              local.set 8
              local.get 7
              local.get 2
              i32.add
              local.tee 5
              local.get 4
              i32.gt_s
              br_if 1 (;@4;)
              local.get 0
              local.get 2
              local.get 8
              local.get 5
              call $sort.symMerge
              local.get 5
              local.set 2
              br 0 (;@5;)
            end
          end
          local.get 7
          local.set 6
          local.get 8
          local.get 4
          i32.ge_s
          br_if 0 (;@3;)
          local.get 0
          local.get 2
          local.get 8
          local.get 4
          call $sort.symMerge
          local.get 7
          local.set 6
          br 0 (;@3;)
        end
      end
      i32.const 0
      local.get 3
      i32.store offset=83624
      local.get 1
      i32.const 16
      i32.add
      global.set 0
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $sort.insertionSort (type 5) (param i32 i32 i32)
    (local i32 i32 i32)
    local.get 1
    local.set 3
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        local.get 2
        i32.ge_s
        br_if 1 (;@1;)
        local.get 3
        local.set 4
        loop  ;; label = @3
          local.get 4
          local.get 1
          i32.le_s
          br_if 1 (;@2;)
          local.get 0
          local.get 4
          local.get 4
          i32.const -1
          i32.add
          local.tee 5
          call $_*internal/fmtsort.SortedMap_.Less
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 5
          i32.const 1
          i32.add
          local.get 5
          call $_sort.Interface_.Swap
          local.get 5
          local.set 4
          br 0 (;@3;)
        end
      end
    end)
  (func $sort.symMerge (type 7) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          local.get 2
          local.get 1
          i32.sub
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          loop  ;; label = @4
            block  ;; label = @5
              local.get 2
              local.get 3
              i32.lt_s
              br_if 0 (;@5;)
              local.get 1
              local.get 2
              i32.const -1
              i32.add
              local.tee 4
              local.get 1
              local.get 4
              i32.gt_s
              select
              local.set 5
              loop  ;; label = @6
                local.get 5
                local.get 1
                i32.eq
                br_if 5 (;@1;)
                local.get 0
                local.get 1
                local.get 1
                i32.const 1
                i32.add
                local.tee 4
                call $_sort.Interface_.Swap
                local.get 4
                local.set 1
                br 0 (;@6;)
              end
            end
            local.get 3
            local.get 2
            i32.add
            i32.const 1
            i32.shr_u
            local.set 4
            local.get 3
            local.get 4
            local.get 0
            local.get 4
            local.get 1
            call $_*internal/fmtsort.SortedMap_.Less
            i32.const 1
            i32.and
            local.tee 5
            select
            local.set 3
            local.get 4
            i32.const 1
            i32.add
            local.get 2
            local.get 5
            select
            local.set 2
            br 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 3
          local.get 2
          i32.sub
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          local.set 4
          loop  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 4
              i32.lt_s
              br_if 0 (;@5;)
              loop  ;; label = @6
                local.get 2
                local.get 1
                i32.le_s
                br_if 5 (;@1;)
                local.get 0
                local.get 2
                local.get 2
                i32.const -1
                i32.add
                local.tee 4
                call $_sort.Interface_.Swap
                local.get 4
                local.set 2
                br 0 (;@6;)
              end
            end
            local.get 4
            local.get 1
            i32.add
            i32.const 1
            i32.shr_u
            local.set 5
            local.get 5
            local.get 4
            local.get 0
            local.get 2
            local.get 5
            call $_*internal/fmtsort.SortedMap_.Less
            i32.const 1
            i32.and
            local.tee 6
            select
            local.set 4
            local.get 1
            local.get 5
            i32.const 1
            i32.add
            local.get 6
            select
            local.set 1
            br 0 (;@4;)
          end
        end
        local.get 1
        local.get 3
        i32.add
        i32.const 1
        i32.shr_u
        local.tee 7
        local.get 2
        local.get 7
        local.get 2
        i32.lt_s
        local.tee 4
        select
        local.set 6
        local.get 7
        local.get 2
        i32.add
        local.tee 8
        local.get 3
        i32.sub
        local.get 1
        local.get 4
        select
        local.set 5
        block  ;; label = @3
          loop  ;; label = @4
            local.get 5
            local.get 6
            i32.ge_s
            br_if 1 (;@3;)
            local.get 6
            local.get 5
            i32.add
            i32.const 1
            i32.shr_u
            local.set 4
            local.get 4
            local.get 6
            local.get 0
            local.get 8
            local.get 4
            i32.const -1
            i32.xor
            i32.add
            local.get 4
            call $_*internal/fmtsort.SortedMap_.Less
            i32.const 1
            i32.and
            local.tee 9
            select
            local.set 6
            local.get 5
            local.get 4
            i32.const 1
            i32.add
            local.get 9
            select
            local.set 5
            br 0 (;@4;)
          end
        end
        local.get 8
        local.get 5
        i32.sub
        local.set 8
        block  ;; label = @3
          local.get 2
          local.get 5
          i32.le_s
          br_if 0 (;@3;)
          local.get 8
          local.get 2
          i32.le_s
          br_if 0 (;@3;)
          local.get 8
          local.get 2
          i32.sub
          local.set 4
          local.get 2
          local.get 5
          i32.sub
          local.set 6
          loop  ;; label = @4
            local.get 2
            local.get 6
            i32.sub
            local.set 9
            block  ;; label = @5
              loop  ;; label = @6
                local.get 6
                local.get 4
                i32.eq
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 4
                  local.get 6
                  i32.ge_s
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 9
                  local.get 2
                  local.get 4
                  call $sort.swapRange
                  local.get 6
                  local.get 4
                  i32.sub
                  local.set 6
                  br 3 (;@4;)
                end
                local.get 0
                local.get 9
                local.get 9
                local.get 4
                i32.add
                local.get 6
                call $sort.swapRange
                local.get 4
                local.get 6
                i32.sub
                local.set 4
                br 0 (;@6;)
              end
            end
          end
          local.get 0
          local.get 9
          local.get 2
          local.get 6
          call $sort.swapRange
        end
        block  ;; label = @3
          local.get 5
          local.get 1
          i32.le_s
          br_if 0 (;@3;)
          local.get 5
          local.get 7
          i32.ge_s
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          local.get 5
          local.get 7
          call $sort.symMerge
        end
        local.get 7
        local.get 8
        i32.ge_s
        br_if 1 (;@1;)
        local.get 7
        local.set 1
        local.get 8
        local.set 2
        local.get 8
        local.get 3
        i32.lt_s
        br_if 0 (;@2;)
      end
    end)
  (func $_*internal/fmtsort.SortedMap_.Less (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 0
    i32.store offset=28
    local.get 3
    i64.const 0
    i64.store offset=20 align=4
    local.get 3
    i64.const 4
    i64.store offset=12 align=4
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 3
    i32.const 8
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 4
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 16
        i32.add
        local.get 0
        i32.load
        local.tee 5
        i32.store
        local.get 0
        i32.load offset=4
        local.get 1
        i32.le_u
        br_if 1 (;@1;)
        local.get 5
        local.get 1
        i32.const 12
        i32.mul
        i32.add
        local.tee 1
        i32.load8_u offset=8
        local.set 5
        local.get 1
        i32.load
        local.set 6
        local.get 3
        i32.const 8
        i32.add
        i32.const 12
        i32.add
        local.get 1
        i32.load offset=4
        local.tee 1
        i32.store
        local.get 3
        i32.const 24
        i32.add
        local.get 0
        i32.load
        local.tee 7
        i32.store
        local.get 0
        i32.load offset=4
        local.get 2
        i32.le_u
        br_if 1 (;@1;)
        local.get 7
        local.get 2
        i32.const 12
        i32.mul
        i32.add
        local.tee 0
        i32.load8_u offset=8
        local.set 2
        local.get 0
        i32.load
        local.set 7
        local.get 3
        i32.const 28
        i32.add
        local.get 0
        i32.load offset=4
        local.tee 0
        i32.store
        local.get 6
        local.get 1
        local.get 5
        local.get 7
        local.get 0
        local.get 2
        call $internal/fmtsort.compare
        local.set 0
        i32.const 0
        local.get 4
        i32.store offset=83624
        local.get 3
        i32.const 32
        i32.add
        global.set 0
        local.get 0
        i32.const 31
        i32.shr_u
        return
      end
      call $runtime.nilPanic
      unreachable
    end
    call $runtime.lookupPanic
    unreachable)
  (func $_sort.Interface_.Swap (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i64 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=4
        local.get 1
        i32.le_u
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=4
        local.get 2
        i32.le_u
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=4
        local.get 2
        i32.le_u
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=4
        local.get 1
        i32.le_u
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.set 3
        local.get 0
        i32.load
        local.get 2
        i32.const 12
        i32.mul
        i32.add
        local.tee 4
        i32.load offset=4
        local.set 5
        local.get 4
        i32.load
        local.set 6
        local.get 0
        i32.load
        local.get 1
        i32.const 12
        i32.mul
        i32.add
        local.tee 7
        i64.load align=4
        local.set 8
        local.get 7
        i32.load8_u offset=8
        local.set 9
        local.get 0
        i32.load
        local.get 1
        i32.const 12
        i32.mul
        i32.add
        local.tee 7
        local.get 4
        i32.load8_u offset=8
        i32.store8 offset=8
        local.get 7
        local.get 5
        i32.store offset=4
        local.get 7
        local.get 6
        i32.store
        local.get 3
        local.get 2
        i32.const 12
        i32.mul
        i32.add
        local.tee 4
        local.get 9
        i32.store8 offset=8
        local.get 4
        local.get 8
        i64.store align=4
        local.get 0
        i32.load offset=16
        local.get 1
        i32.le_u
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=16
        local.get 2
        i32.le_u
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=16
        local.get 2
        i32.le_u
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=16
        local.get 1
        i32.le_u
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=12
        local.set 4
        local.get 0
        i32.load offset=12
        local.get 2
        i32.const 12
        i32.mul
        local.tee 7
        i32.add
        local.tee 2
        i32.load offset=4
        local.set 3
        local.get 2
        i32.load
        local.set 5
        local.get 0
        i32.load offset=12
        local.get 1
        i32.const 12
        i32.mul
        local.tee 1
        i32.add
        local.tee 6
        i64.load align=4
        local.set 8
        local.get 6
        i32.load8_u offset=8
        local.set 6
        local.get 0
        i32.load offset=12
        local.get 1
        i32.add
        local.tee 0
        local.get 2
        i32.load8_u offset=8
        i32.store8 offset=8
        local.get 0
        local.get 3
        i32.store offset=4
        local.get 0
        local.get 5
        i32.store
        local.get 4
        local.get 7
        i32.add
        local.tee 0
        local.get 6
        i32.store8 offset=8
        local.get 0
        local.get 8
        i64.store align=4
        return
      end
      call $runtime.nilPanic
      unreachable
    end
    call $runtime.lookupPanic
    unreachable)
  (func $sort.swapRange (type 7) (param i32 i32 i32 i32)
    local.get 3
    i32.const 0
    local.get 3
    i32.const 0
    i32.gt_s
    select
    local.set 3
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        local.get 2
        call $_sort.Interface_.Swap
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 3
        i32.const -1
        i32.add
        local.set 3
        br 0 (;@2;)
      end
    end)
  (func $_*reflect.MapIter_.Next (type 3)
    i32.const 34
    i32.const 71896
    call $runtime._panic
    unreachable)
  (func $runtime.sliceAppend (type 12) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 7
    global.set 0
    local.get 7
    i32.const 0
    i32.store offset=12
    local.get 7
    i64.const 2
    i64.store offset=4 align=4
    i32.const 0
    i32.load offset=83624
    local.set 8
    i32.const 0
    local.get 7
    i32.store offset=83624
    local.get 7
    local.get 8
    i32.store
    block  ;; label = @1
      local.get 5
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          local.get 3
          i32.add
          local.tee 9
          local.get 4
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          local.set 10
          br 1 (;@2;)
        end
        local.get 4
        i32.const 1
        i32.shl
        local.tee 4
        i32.const 1
        local.get 4
        select
        local.set 10
        loop  ;; label = @3
          local.get 10
          local.tee 4
          i32.const 1
          i32.shl
          local.set 10
          local.get 9
          local.get 4
          i32.gt_u
          br_if 0 (;@3;)
        end
        local.get 7
        i32.const 8
        i32.add
        local.get 4
        local.get 6
        i32.mul
        call $runtime.alloc
        local.tee 10
        i32.store
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 10
        local.get 1
        local.get 6
        local.get 3
        i32.mul
        call $memcpy
        drop
      end
      local.get 7
      i32.const 12
      i32.add
      local.get 10
      i32.store
      local.get 10
      local.get 6
      local.get 3
      i32.mul
      i32.add
      local.get 2
      local.get 6
      local.get 5
      i32.mul
      call $memmove
      drop
      i32.const 0
      local.get 8
      i32.store offset=83624
      local.get 0
      local.get 4
      i32.store offset=8
      local.get 0
      local.get 9
      i32.store offset=4
      local.get 0
      local.get 10
      i32.store
      local.get 7
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 0
    local.get 8
    i32.store offset=83624
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 7
    i32.const 16
    i32.add
    global.set 0)
  (func $internal/fmtsort.compare (type 13) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i64 i64 i32 f64 f64 f64 i32 i32 i32 i32)
    global.get 0
    i32.const 336
    i32.sub
    local.tee 6
    global.set 0
    local.get 6
    i64.const 0
    i64.store offset=232
    local.get 6
    i64.const 0
    i64.store offset=216
    local.get 6
    i64.const 81604378624
    i64.store offset=248
    local.get 6
    i64.const 0
    i64.store offset=256
    local.get 6
    i32.const 0
    i32.store offset=328
    local.get 6
    i64.const 0
    i64.store offset=320
    local.get 6
    i64.const 0
    i64.store offset=312
    local.get 6
    i64.const 0
    i64.store offset=304
    local.get 6
    i64.const 0
    i64.store offset=296
    local.get 6
    i64.const 0
    i64.store offset=288
    local.get 6
    i64.const 0
    i64.store offset=280
    local.get 6
    i64.const 0
    i64.store offset=272
    local.get 6
    i64.const 0
    i64.store offset=264
    local.get 6
    local.get 5
    i32.store8 offset=240
    local.get 6
    local.get 2
    i32.store8 offset=224
    i32.const 0
    i32.load offset=83624
    local.set 7
    i32.const 0
    local.get 6
    i32.const 248
    i32.add
    i32.store offset=83624
    local.get 6
    local.get 3
    i32.store offset=232
    local.get 6
    local.get 4
    i32.store offset=236
    local.get 6
    local.get 0
    i32.store offset=216
    local.get 6
    local.get 1
    i32.store offset=220
    local.get 6
    local.get 7
    i32.store offset=248
    local.get 6
    local.get 6
    i32.const 232
    i32.add
    i32.store offset=260
    local.get 6
    local.get 6
    i32.const 216
    i32.add
    i32.store offset=256
    i32.const -1
    local.set 8
    block  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      call $_reflect.Value_.Type
      local.tee 0
      local.get 3
      local.get 4
      local.get 5
      call $_reflect.Value_.Type
      i32.ne
      br_if 0 (;@1;)
      i32.const -1
      local.set 8
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 0
                                      local.get 1
                                      local.get 2
                                      call $_reflect.Value_.Kind
                                      i32.const -1
                                      i32.add
                                      br_table 5 (;@12;) 0 (;@17;) 0 (;@17;) 0 (;@17;) 0 (;@17;) 0 (;@17;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 3 (;@14;) 3 (;@14;) 4 (;@13;) 4 (;@13;) 2 (;@15;) 10 (;@7;) 7 (;@10;) 8 (;@9;) 6 (;@11;) 10 (;@7;) 11 (;@6;) 10 (;@7;) 10 (;@7;) 12 (;@5;) 10 (;@7;)
                                    end
                                    i32.const -1
                                    local.set 8
                                    local.get 0
                                    local.get 1
                                    local.get 2
                                    call $_reflect.Value_.Int
                                    local.tee 9
                                    local.get 0
                                    local.get 4
                                    local.get 5
                                    call $_reflect.Value_.Int
                                    local.tee 10
                                    i64.lt_s
                                    br_if 15 (;@1;)
                                    local.get 9
                                    local.get 10
                                    i64.gt_s
                                    local.set 8
                                    br 15 (;@1;)
                                  end
                                  i32.const -1
                                  local.set 8
                                  local.get 0
                                  local.get 1
                                  local.get 2
                                  call $_reflect.Value_.Uint
                                  local.tee 9
                                  local.get 0
                                  local.get 4
                                  local.get 5
                                  call $_reflect.Value_.Uint
                                  local.tee 10
                                  i64.lt_u
                                  br_if 14 (;@1;)
                                  local.get 9
                                  local.get 10
                                  i64.gt_u
                                  local.set 8
                                  br 14 (;@1;)
                                end
                                local.get 6
                                i32.const 16
                                i32.add
                                local.get 0
                                local.get 1
                                local.get 2
                                call $_reflect.Value_.String
                                local.get 6
                                i32.const 276
                                i32.add
                                local.get 6
                                i32.load offset=16
                                local.tee 2
                                i32.store
                                local.get 6
                                i32.load offset=20
                                local.set 3
                                local.get 6
                                i32.const 8
                                i32.add
                                local.get 0
                                local.get 4
                                local.get 5
                                call $_reflect.Value_.String
                                local.get 6
                                i32.const 280
                                i32.add
                                local.get 6
                                i32.load offset=8
                                local.tee 0
                                i32.store
                                local.get 6
                                i32.load offset=12
                                local.tee 11
                                local.get 3
                                local.get 11
                                local.get 3
                                i32.lt_s
                                select
                                local.tee 1
                                i32.const 0
                                local.get 1
                                i32.const 0
                                i32.gt_s
                                select
                                local.set 1
                                block  ;; label = @15
                                  loop  ;; label = @16
                                    local.get 1
                                    i32.eqz
                                    br_if 1 (;@15;)
                                    local.get 2
                                    i32.load8_u
                                    local.tee 4
                                    local.get 0
                                    i32.load8_u
                                    local.tee 5
                                    i32.lt_u
                                    br_if 14 (;@2;)
                                    local.get 1
                                    i32.const -1
                                    i32.add
                                    local.set 1
                                    local.get 2
                                    i32.const 1
                                    i32.add
                                    local.set 2
                                    local.get 0
                                    i32.const 1
                                    i32.add
                                    local.set 0
                                    local.get 4
                                    local.get 5
                                    i32.le_u
                                    br_if 0 (;@16;)
                                    br 8 (;@8;)
                                  end
                                end
                                i32.const -1
                                local.set 8
                                local.get 3
                                local.get 11
                                i32.lt_s
                                br_if 13 (;@1;)
                                br 6 (;@8;)
                              end
                              local.get 0
                              local.get 1
                              local.get 2
                              call $_reflect.Value_.Float
                              local.set 12
                              local.get 0
                              local.get 4
                              local.get 5
                              call $_reflect.Value_.Float
                              local.set 13
                              local.get 12
                              local.get 12
                              f64.ne
                              br_if 12 (;@1;)
                              local.get 13
                              local.get 13
                              f64.ne
                              br_if 5 (;@8;)
                              i32.const -1
                              local.set 8
                              local.get 12
                              local.get 13
                              f64.lt
                              br_if 12 (;@1;)
                              local.get 12
                              local.get 13
                              f64.gt
                              local.set 8
                              br 12 (;@1;)
                            end
                            local.get 6
                            i32.const 40
                            i32.add
                            local.get 0
                            local.get 1
                            local.get 2
                            call $_reflect.Value_.Complex
                            local.get 6
                            f64.load offset=48
                            local.set 14
                            local.get 6
                            f64.load offset=40
                            local.set 12
                            local.get 6
                            i32.const 24
                            i32.add
                            local.get 0
                            local.get 4
                            local.get 5
                            call $_reflect.Value_.Complex
                            local.get 12
                            local.get 12
                            f64.ne
                            br_if 10 (;@2;)
                            local.get 6
                            f64.load offset=24
                            local.tee 13
                            local.get 13
                            f64.ne
                            br_if 4 (;@8;)
                            local.get 12
                            local.get 13
                            f64.lt
                            br_if 10 (;@2;)
                            i32.const 1
                            local.set 8
                            local.get 12
                            local.get 13
                            f64.gt
                            i32.const 1
                            i32.xor
                            br_if 9 (;@3;)
                            br 11 (;@1;)
                          end
                          i32.const 1
                          i32.const -1
                          local.get 0
                          local.get 1
                          local.get 2
                          call $_reflect.Value_.Bool
                          local.tee 1
                          i32.const 1
                          i32.and
                          select
                          i32.const 0
                          local.get 1
                          local.get 0
                          local.get 4
                          local.get 5
                          call $_reflect.Value_.Bool
                          i32.xor
                          i32.const 1
                          i32.and
                          select
                          local.set 8
                          br 10 (;@1;)
                        end
                        i32.const -1
                        local.set 8
                        local.get 0
                        local.get 1
                        local.get 2
                        call $_reflect.Value_.Pointer
                        local.tee 1
                        local.get 0
                        local.get 4
                        local.get 5
                        call $_reflect.Value_.Pointer
                        local.tee 2
                        i32.lt_u
                        br_if 9 (;@1;)
                        local.get 1
                        local.get 2
                        i32.gt_u
                        local.set 8
                        br 9 (;@1;)
                      end
                      local.get 6
                      i32.const 56
                      i32.add
                      local.get 0
                      local.get 1
                      local.get 2
                      local.get 0
                      local.get 4
                      local.get 5
                      call $internal/fmtsort.nilCompare
                      block  ;; label = @10
                        local.get 6
                        i32.load8_u offset=60
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load offset=56
                        local.set 8
                        br 9 (;@1;)
                      end
                      i32.const -1
                      local.set 8
                      local.get 0
                      local.get 1
                      local.get 2
                      call $_reflect.Value_.Pointer
                      local.tee 1
                      local.get 0
                      local.get 4
                      local.get 5
                      call $_reflect.Value_.Pointer
                      local.tee 2
                      i32.lt_u
                      br_if 8 (;@1;)
                      local.get 1
                      local.get 2
                      i32.gt_u
                      local.set 8
                      br 8 (;@1;)
                    end
                    local.get 6
                    i32.const 208
                    i32.add
                    local.get 0
                    local.get 1
                    local.get 2
                    local.get 0
                    local.get 4
                    local.get 5
                    call $internal/fmtsort.nilCompare
                    block  ;; label = @9
                      local.get 6
                      i32.load8_u offset=212
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 6
                      i32.load offset=208
                      local.set 8
                      br 8 (;@1;)
                    end
                    local.get 6
                    i32.const 192
                    i32.add
                    local.get 0
                    local.get 1
                    local.get 2
                    call $_reflect.Value_.Elem
                    local.get 6
                    i32.const 300
                    i32.add
                    local.get 6
                    i32.load offset=196
                    local.tee 8
                    i32.store
                    local.get 6
                    i32.const 304
                    i32.add
                    local.get 6
                    i32.load offset=192
                    local.get 8
                    local.get 6
                    i32.load8_u offset=200
                    call $_reflect.Value_.Type
                    local.tee 8
                    i32.store
                    local.get 6
                    i32.const 184
                    i32.add
                    i32.const 88
                    local.get 8
                    call $reflect.ValueOf
                    local.get 6
                    i32.const 308
                    i32.add
                    local.get 6
                    i32.load offset=188
                    local.tee 8
                    i32.store
                    local.get 6
                    i32.load offset=184
                    local.set 3
                    local.get 6
                    i32.const 168
                    i32.add
                    local.get 0
                    local.get 4
                    local.get 5
                    call $_reflect.Value_.Elem
                    local.get 6
                    i32.const 312
                    i32.add
                    local.get 6
                    i32.load offset=172
                    local.tee 11
                    i32.store
                    local.get 6
                    i32.const 316
                    i32.add
                    local.get 6
                    i32.load offset=168
                    local.get 11
                    local.get 6
                    i32.load8_u offset=176
                    call $_reflect.Value_.Type
                    local.tee 11
                    i32.store
                    local.get 6
                    i32.const 160
                    i32.add
                    i32.const 88
                    local.get 11
                    call $reflect.ValueOf
                    local.get 6
                    i32.const 320
                    i32.add
                    local.get 6
                    i32.load offset=164
                    local.tee 11
                    i32.store
                    local.get 3
                    local.get 8
                    i32.const 2
                    local.get 6
                    i32.load offset=160
                    local.get 11
                    i32.const 2
                    call $internal/fmtsort.compare
                    local.tee 8
                    br_if 7 (;@1;)
                    local.get 6
                    i32.const 144
                    i32.add
                    local.get 0
                    local.get 1
                    local.get 2
                    call $_reflect.Value_.Elem
                    local.get 6
                    i32.const 324
                    i32.add
                    local.get 6
                    i32.load offset=148
                    local.tee 1
                    i32.store
                    local.get 6
                    i32.load8_u offset=152
                    local.set 2
                    local.get 6
                    i32.load offset=144
                    local.set 8
                    local.get 6
                    i32.const 128
                    i32.add
                    local.get 0
                    local.get 4
                    local.get 5
                    call $_reflect.Value_.Elem
                    local.get 6
                    i32.const 328
                    i32.add
                    local.get 6
                    i32.load offset=132
                    local.tee 0
                    i32.store
                    local.get 8
                    local.get 1
                    local.get 2
                    local.get 6
                    i32.load offset=128
                    local.get 0
                    local.get 6
                    i32.load8_u offset=136
                    call $internal/fmtsort.compare
                    local.set 1
                    i32.const 0
                    local.get 7
                    i32.store offset=83624
                    local.get 6
                    i32.const 336
                    i32.add
                    global.set 0
                    local.get 1
                    return
                  end
                  i32.const 1
                  local.set 8
                  br 6 (;@1;)
                end
                local.get 6
                i32.const 66416
                i32.const 21
                i32.const 66056
                i32.const 1
                call $runtime.stringConcat
                local.get 6
                i32.const 264
                i32.add
                local.get 6
                i32.load
                local.tee 2
                i32.store
                local.get 6
                i32.load offset=4
                local.set 0
                local.get 6
                i32.const 268
                i32.add
                i32.const 8
                call $runtime.alloc
                local.tee 1
                i32.store
                local.get 6
                i32.const 272
                i32.add
                local.get 1
                i32.store
                local.get 1
                local.get 0
                i32.store offset=4
                local.get 1
                local.get 2
                i32.store
                i32.const 34
                local.get 1
                call $runtime._panic
                unreachable
              end
              local.get 6
              i32.const 292
              i32.add
              local.set 15
              local.get 6
              i32.const 296
              i32.add
              local.set 16
              i32.const 0
              local.set 3
              loop  ;; label = @6
                local.get 3
                local.get 0
                local.get 1
                local.get 2
                call $_reflect.Value_.Len
                i32.ge_s
                br_if 2 (;@4;)
                local.get 6
                i32.const 112
                i32.add
                local.get 0
                local.get 1
                local.get 2
                local.get 3
                call $_reflect.Value_.Index
                local.get 15
                local.get 6
                i32.load offset=116
                local.tee 8
                i32.store
                local.get 6
                i32.load8_u offset=120
                local.set 11
                local.get 6
                i32.load offset=112
                local.set 17
                local.get 6
                i32.const 96
                i32.add
                local.get 0
                local.get 4
                local.get 5
                local.get 3
                call $_reflect.Value_.Index
                local.get 16
                local.get 6
                i32.load offset=100
                local.tee 18
                i32.store
                local.get 3
                i32.const 1
                i32.add
                local.set 3
                local.get 17
                local.get 8
                local.get 11
                local.get 6
                i32.load offset=96
                local.get 18
                local.get 6
                i32.load8_u offset=104
                call $internal/fmtsort.compare
                local.tee 8
                br_if 5 (;@1;)
                br 0 (;@6;)
              end
            end
            local.get 6
            i32.const 284
            i32.add
            local.set 15
            local.get 6
            i32.const 288
            i32.add
            local.set 16
            i32.const 0
            local.set 3
            loop  ;; label = @5
              local.get 3
              local.get 0
              local.get 1
              local.get 2
              call $_reflect.Value_.NumField
              i32.ge_s
              br_if 1 (;@4;)
              local.get 6
              i32.const 80
              i32.add
              local.get 0
              local.get 1
              local.get 2
              local.get 3
              call $_reflect.Value_.Field
              local.get 15
              local.get 6
              i32.load offset=84
              local.tee 8
              i32.store
              local.get 6
              i32.load8_u offset=88
              local.set 11
              local.get 6
              i32.load offset=80
              local.set 17
              local.get 6
              i32.const 64
              i32.add
              local.get 0
              local.get 4
              local.get 5
              local.get 3
              call $_reflect.Value_.Field
              local.get 16
              local.get 6
              i32.load offset=68
              local.tee 18
              i32.store
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              local.get 17
              local.get 8
              local.get 11
              local.get 6
              i32.load offset=64
              local.get 18
              local.get 6
              i32.load8_u offset=72
              call $internal/fmtsort.compare
              local.tee 8
              br_if 4 (;@1;)
              br 0 (;@5;)
            end
          end
          i32.const 0
          local.set 8
          br 2 (;@1;)
        end
        local.get 14
        local.get 14
        f64.ne
        br_if 0 (;@2;)
        local.get 6
        f64.load offset=32
        local.tee 12
        local.get 12
        f64.ne
        br_if 1 (;@1;)
        i32.const -1
        local.set 8
        local.get 14
        local.get 12
        f64.lt
        br_if 1 (;@1;)
        local.get 14
        local.get 12
        f64.gt
        local.set 8
        br 1 (;@1;)
      end
      i32.const -1
      local.set 8
    end
    i32.const 0
    local.get 7
    i32.store offset=83624
    local.get 6
    i32.const 336
    i32.add
    global.set 0
    local.get 8)
  (func $internal/fmtsort.nilCompare (type 12) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 7
    global.set 0
    local.get 7
    i32.const 8
    i32.add
    i32.const 0
    i32.store8
    local.get 7
    i32.const 16
    i32.add
    i32.const 8
    i32.add
    i32.const 0
    i32.store8
    local.get 7
    i32.const 2
    i32.store offset=36
    local.get 7
    i64.const 0
    i64.store
    local.get 7
    i64.const 0
    i64.store offset=16
    i32.const 0
    i32.load offset=83624
    local.set 8
    i32.const 0
    local.get 7
    i32.const 32
    i32.add
    i32.store offset=83624
    local.get 7
    local.get 8
    i32.store offset=32
    local.get 7
    local.get 7
    i32.store offset=40
    local.get 7
    local.get 7
    i32.const 16
    i32.add
    i32.store offset=44
    local.get 1
    local.get 2
    local.get 3
    call $_reflect.Value_.IsNil
    local.set 2
    local.get 4
    local.get 5
    local.get 6
    call $_reflect.Value_.IsNil
    local.set 1
    i32.const 0
    local.get 8
    i32.store offset=83624
    local.get 0
    local.get 2
    local.get 1
    i32.or
    i32.const 1
    i32.and
    i32.store8 offset=4
    local.get 0
    i32.const 0
    local.get 1
    i32.const -1
    i32.xor
    i32.const 1
    i32.and
    i32.sub
    local.get 1
    i32.const 1
    i32.and
    local.get 2
    i32.const 1
    i32.and
    select
    i32.store
    local.get 7
    i32.const 48
    i32.add
    global.set 0)
  (func $runtime.stringConcat (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    i64.const 0
    i64.store offset=56
    local.get 5
    i64.const 0
    i64.store offset=48
    local.get 5
    i32.const 6
    i32.store offset=36
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 2
    i32.store offset=12
    local.get 5
    local.get 3
    i32.store offset=16
    local.get 5
    local.get 4
    i32.store offset=20
    i32.const 0
    i32.load offset=83624
    local.set 6
    i32.const 0
    local.get 5
    i32.const 32
    i32.add
    i32.store offset=83624
    local.get 5
    local.get 6
    i32.store offset=32
    local.get 5
    local.get 5
    i32.const 8
    i32.add
    i32.store offset=40
    local.get 5
    local.get 5
    i32.const 16
    i32.add
    i32.store offset=44
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        i32.const 56
        i32.add
        local.get 4
        local.get 2
        i32.add
        local.tee 7
        call $runtime.alloc
        local.tee 8
        i32.store
        local.get 5
        i32.const 60
        i32.add
        local.get 8
        i32.store
        local.get 5
        i32.const 48
        i32.add
        local.get 8
        i32.store
        local.get 8
        local.get 1
        local.get 2
        call $memcpy
        local.tee 1
        local.get 2
        i32.add
        local.get 3
        local.get 4
        call $memcpy
        drop
        i32.const 0
        local.get 6
        i32.store offset=83624
        local.get 5
        i64.const 0
        i64.store offset=24
        local.get 5
        i32.const 52
        i32.add
        local.get 5
        i32.const 24
        i32.add
        i32.store
        local.get 0
        local.get 7
        i32.store offset=4
        local.get 0
        local.get 1
        i32.store
        local.get 5
        i32.const 64
        i32.add
        global.set 0
        return
      end
      i32.const 0
      local.get 6
      i32.store offset=83624
      local.get 0
      local.get 4
      i32.store offset=4
      local.get 0
      local.get 3
      i32.store
      local.get 5
      i32.const 64
      i32.add
      global.set 0
      return
    end
    i32.const 0
    local.get 6
    i32.store offset=83624
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 5
    i32.const 64
    i32.add
    global.set 0)
  (func $unicode.SimpleFold (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 1114112
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        local.set 1
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.const 128
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 88
        local.set 2
        i32.const 0
        local.set 1
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                local.get 1
                i32.le_s
                br_if 0 (;@6;)
                local.get 2
                local.get 1
                i32.sub
                i32.const 2
                i32.div_s
                local.get 1
                i32.add
                local.tee 3
                i32.const 87
                i32.le_u
                br_if 1 (;@5;)
                call $runtime.lookupPanic
                unreachable
              end
              block  ;; label = @6
                local.get 1
                i32.const 87
                i32.gt_s
                br_if 0 (;@6;)
                local.get 1
                i32.const 2
                i32.shl
                local.tee 1
                i32.const 79112
                i32.add
                i32.load16_u
                local.get 0
                i32.eq
                br_if 3 (;@3;)
              end
              i32.const 1
              local.get 0
              call $unicode.To
              local.tee 1
              local.get 0
              i32.ne
              br_if 4 (;@1;)
              i32.const 0
              local.get 0
              call $unicode.To
              return
            end
            local.get 3
            i32.const 1
            i32.add
            local.get 1
            local.get 3
            i32.const 2
            i32.shl
            i32.const 79112
            i32.add
            i32.load16_u
            local.get 0
            i32.lt_s
            local.tee 4
            select
            local.set 1
            local.get 2
            local.get 3
            local.get 4
            select
            local.set 2
            br 0 (;@4;)
          end
        end
        local.get 1
        i32.const 79114
        i32.add
        i32.load16_u
        return
      end
      local.get 0
      i32.const 1
      i32.shl
      i32.const 66704
      i32.add
      i32.load16_u
      return
    end
    local.get 1)
  (func $unicode.To (type 9) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    i32.const 317
    local.set 3
    local.get 2
    i32.const 24
    i32.add
    local.set 4
    local.get 2
    i32.const 16
    i32.add
    local.set 5
    i32.const 0
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          local.get 6
          i32.le_s
          br_if 1 (;@2;)
          local.get 4
          i32.const 0
          i32.store
          local.get 5
          i64.const 0
          i64.store
          local.get 2
          i64.const 0
          i64.store offset=8
          local.get 3
          local.get 6
          i32.sub
          i32.const 2
          i32.div_s
          local.get 6
          i32.add
          local.tee 7
          i32.const 316
          i32.gt_u
          br_if 2 (;@1;)
          local.get 2
          local.get 7
          i32.const 20
          i32.mul
          local.tee 8
          i32.const 72788
          i32.add
          i32.load
          i32.store offset=24
          local.get 2
          local.get 8
          i32.const 72780
          i32.add
          i64.load align=4
          i64.store offset=16
          local.get 2
          local.get 8
          i32.const 72776
          i32.add
          i32.load
          local.tee 9
          i32.store offset=12
          local.get 2
          local.get 8
          i32.const 72772
          i32.add
          i32.load
          local.tee 10
          i32.store offset=8
          block  ;; label = @4
            block  ;; label = @5
              local.get 10
              local.get 1
              i32.gt_s
              local.tee 8
              br_if 0 (;@5;)
              local.get 9
              local.get 1
              i32.lt_s
              br_if 0 (;@5;)
              local.get 2
              i32.const 8
              i32.add
              local.get 0
              i32.const 2
              i32.shl
              i32.add
              i32.const 8
              i32.add
              i32.load
              local.tee 6
              i32.const 1114112
              i32.lt_s
              br_if 1 (;@4;)
              local.get 1
              local.get 10
              i32.sub
              i32.const -2
              i32.and
              local.get 0
              i32.const 1
              i32.and
              i32.or
              local.get 10
              i32.add
              local.set 1
              br 3 (;@2;)
            end
            local.get 6
            local.get 7
            i32.const 1
            i32.add
            local.get 8
            select
            local.set 6
            local.get 7
            local.get 3
            local.get 8
            select
            local.set 3
            br 1 (;@3;)
          end
        end
        local.get 6
        local.get 1
        i32.add
        local.set 1
      end
      local.get 2
      i32.const 32
      i32.add
      global.set 0
      local.get 1
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $strings.EqualFold (type 9) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    i32.const 3
    local.set 3
    i32.const 3
    local.set 4
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 3
            i32.const 72144
            i32.const 0
            call $runtime.stringEqual
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 1
            local.get 4
            i32.const 72144
            i32.const 0
            call $runtime.stringEqual
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 3
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 0
          local.get 3
          local.get 1
          local.get 4
          call $runtime.stringEqual
          local.set 5
          local.get 2
          i32.const 16
          i32.add
          global.set 0
          local.get 5
          return
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load8_s
                local.tee 5
                i32.const 0
                i32.lt_s
                br_if 0 (;@6;)
                local.get 5
                i32.const 255
                i32.and
                local.set 6
                local.get 3
                i32.const -1
                i32.add
                local.set 3
                local.get 0
                i32.const 1
                i32.add
                local.set 0
                br 1 (;@5;)
              end
              local.get 2
              i32.const 8
              i32.add
              local.get 0
              local.get 3
              call $unicode/utf8.DecodeRuneInString
              local.get 3
              local.get 2
              i32.load offset=12
              local.tee 5
              i32.lt_u
              br_if 1 (;@4;)
              local.get 2
              i32.load offset=8
              local.set 6
              local.get 3
              local.get 5
              i32.sub
              local.set 3
              local.get 0
              local.get 5
              i32.add
              local.set 0
            end
            local.get 4
            i32.eqz
            br_if 3 (;@1;)
            block  ;; label = @5
              local.get 1
              i32.load8_s
              local.tee 5
              i32.const 0
              i32.lt_s
              br_if 0 (;@5;)
              local.get 5
              i32.const 255
              i32.and
              local.set 7
              local.get 4
              i32.const -1
              i32.add
              local.set 4
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              br 2 (;@3;)
            end
            local.get 2
            local.get 1
            local.get 4
            call $unicode/utf8.DecodeRuneInString
            local.get 4
            local.get 2
            i32.load offset=4
            local.tee 5
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            i32.load
            local.set 7
            local.get 4
            local.get 5
            i32.sub
            local.set 4
            local.get 1
            local.get 5
            i32.add
            local.set 1
            br 1 (;@3;)
          end
          call $runtime.slicePanic
          unreachable
        end
        local.get 7
        local.get 6
        i32.eq
        br_if 0 (;@2;)
        local.get 7
        local.get 6
        local.get 7
        local.get 6
        i32.lt_s
        local.tee 8
        select
        local.tee 9
        local.set 5
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            local.get 7
            local.get 8
            select
            local.tee 6
            i32.const 128
            i32.ge_s
            br_if 0 (;@4;)
            local.get 9
            i32.const -65
            i32.add
            i32.const 25
            i32.gt_u
            br_if 1 (;@3;)
            local.get 6
            local.get 9
            i32.const 32
            i32.add
            i32.eq
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          block  ;; label = @4
            loop  ;; label = @5
              local.get 5
              call $unicode.SimpleFold
              local.tee 5
              local.get 9
              i32.eq
              br_if 1 (;@4;)
              local.get 5
              local.get 6
              i32.lt_s
              br_if 0 (;@5;)
            end
          end
          local.get 5
          local.get 6
          i32.eq
          br_if 1 (;@2;)
        end
      end
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      i32.const 0
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $strings.IndexByte (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 3
    local.get 1
    i32.const 0
    local.get 1
    i32.const 0
    i32.gt_s
    select
    local.set 4
    local.get 2
    i32.const 255
    i32.and
    local.set 2
    loop (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 4
        local.get 3
        i32.ne
        br_if 0 (;@2;)
        i32.const -1
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 3
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          i32.add
          i32.load8_u
          local.get 2
          i32.ne
          br_if 1 (;@2;)
          local.get 3
          return
        end
        call $runtime.lookupPanic
        unreachable
      end
      local.get 3
      i32.const 1
      i32.add
      local.set 3
      br 0 (;@1;)
    end)
  (func $runtime.stringFromBytes (type 7) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i64.const 0
    i64.store offset=52 align=4
    local.get 4
    i64.const 0
    i64.store offset=44 align=4
    local.get 4
    i32.const 5
    i32.store offset=36
    local.get 4
    i32.const 0
    i32.store offset=16
    local.get 4
    i64.const 0
    i64.store offset=8
    i32.const 0
    i32.load offset=83624
    local.set 5
    i32.const 0
    local.get 4
    i32.const 32
    i32.add
    i32.store offset=83624
    local.get 4
    local.get 5
    i32.store offset=32
    local.get 4
    local.get 4
    i32.const 8
    i32.add
    i32.store offset=40
    local.get 4
    local.get 2
    call $runtime.alloc
    local.tee 6
    i32.store offset=52
    local.get 4
    local.get 6
    i32.store offset=56
    local.get 4
    local.get 6
    i32.store offset=44
    local.get 6
    local.get 1
    local.get 2
    call $memcpy
    local.set 6
    i32.const 0
    local.get 5
    i32.store offset=83624
    local.get 4
    i64.const 0
    i64.store offset=24
    local.get 4
    local.get 4
    i32.const 24
    i32.add
    i32.store offset=48
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 6
    i32.store
    local.get 4
    i32.const 64
    i32.add
    global.set 0)
  (func $runtime.putchar (type 2) (param i32)
    (local i32 i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=83492
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
    i32.store offset=83492
    local.get 1
    i32.const 83504
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
      i32.store offset=82680
      i32.const 1
      i32.const 82676
      i32.const 1
      i32.const 83628
      call $runtime.fd_write
      drop
      i32.const 0
      i32.const 0
      i32.store offset=83492
    end)
  (func $strconv.genericFtoa (type 14) (param i32 i32 f64 i32 i32 i32)
    (local i32 i32 i64 i32 i64 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i64 i32 i32 i32 i64 i64)
    global.get 0
    i32.const 800
    i32.sub
    local.tee 6
    global.set 0
    local.get 6
    i64.const 0
    i64.store offset=752
    local.get 6
    i64.const 0
    i64.store offset=744
    local.get 6
    i64.const 0
    i64.store offset=736
    local.get 6
    i64.const 0
    i64.store offset=728
    local.get 6
    i64.const 0
    i64.store offset=720
    local.get 6
    i64.const 0
    i64.store offset=712
    local.get 6
    i64.const 0
    i64.store offset=704
    local.get 6
    i64.const 0
    i64.store offset=696
    local.get 6
    i64.const 0
    i64.store offset=688
    local.get 6
    i64.const 0
    i64.store offset=680
    local.get 6
    i64.const 0
    i64.store offset=672
    local.get 6
    i64.const 0
    i64.store offset=664
    local.get 6
    i64.const 0
    i64.store offset=656
    local.get 6
    i64.const 0
    i64.store offset=648
    local.get 6
    i64.const 0
    i64.store offset=640
    local.get 6
    i64.const 0
    i64.store offset=632
    local.get 6
    i64.const 0
    i64.store offset=624
    local.get 6
    i64.const 0
    i64.store offset=616
    local.get 6
    i64.const 0
    i64.store offset=608
    local.get 6
    i64.const 0
    i64.store offset=600
    local.get 6
    i64.const 0
    i64.store offset=592
    local.get 6
    i64.const 0
    i64.store offset=584
    local.get 6
    i64.const 0
    i64.store offset=576
    local.get 6
    i64.const 0
    i64.store offset=568
    local.get 6
    i64.const 0
    i64.store offset=560
    local.get 6
    i64.const 0
    i64.store offset=552
    local.get 6
    i64.const 0
    i64.store offset=544
    local.get 6
    i64.const 0
    i64.store offset=536
    local.get 6
    i64.const 0
    i64.store offset=528
    local.get 6
    i64.const 0
    i64.store offset=520
    local.get 6
    i64.const 0
    i64.store offset=512
    local.get 6
    i64.const 304942678016
    i64.store offset=504
    local.get 6
    i32.const 0
    i32.store offset=792
    local.get 6
    i64.const 0
    i64.store offset=784
    local.get 6
    i64.const 0
    i64.store offset=776
    local.get 6
    i64.const 0
    i64.store offset=768
    local.get 6
    i64.const 0
    i64.store offset=760
    i32.const 0
    i32.load offset=83624
    local.set 7
    i32.const 0
    local.get 6
    i32.const 504
    i32.add
    i32.store offset=83624
    local.get 6
    local.get 7
    i32.store offset=504
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          i32.const 64
          i32.eq
          br_if 0 (;@3;)
          local.get 5
          i32.const 32
          i32.ne
          br_if 1 (;@2;)
          local.get 6
          i32.const 516
          i32.add
          local.get 6
          i32.const 420
          i32.add
          i32.store
          local.get 6
          i32.const 520
          i32.add
          local.get 6
          i32.const 420
          i32.add
          i32.store
          local.get 6
          i32.const 512
          i32.add
          local.get 6
          i32.const 420
          i32.add
          i32.store
          local.get 2
          f32.demote_f64
          i32.reinterpret_f32
          i64.extend_i32_u
          local.set 8
          i32.const 72736
          local.set 9
          br 2 (;@1;)
        end
        local.get 6
        i32.const 780
        i32.add
        local.get 6
        i32.const 472
        i32.add
        i32.store
        local.get 6
        i32.const 784
        i32.add
        local.get 6
        i32.const 472
        i32.add
        i32.store
        local.get 6
        i32.const 776
        i32.add
        local.get 6
        i32.const 472
        i32.add
        i32.store
        local.get 2
        i64.reinterpret_f64
        local.set 8
        i32.const 72752
        local.set 9
        br 1 (;@1;)
      end
      i32.const 34
      i32.const 68816
      call $runtime._panic
      unreachable
    end
    local.get 6
    i32.const 524
    i32.add
    local.get 9
    i32.store
    i64.const 0
    i64.const 1
    local.get 9
    i32.load
    local.tee 5
    i64.extend_i32_u
    local.tee 10
    i64.shl
    local.get 5
    i32.const 63
    i32.gt_u
    local.tee 11
    select
    local.tee 12
    i64.const -1
    i64.add
    local.get 8
    i64.and
    local.set 13
    local.get 5
    local.get 9
    i32.load offset=4
    local.tee 14
    i32.add
    local.tee 15
    i32.const 64
    i32.lt_u
    local.get 8
    local.get 15
    i64.extend_i32_u
    i64.shr_u
    i64.const 0
    i64.ne
    i32.and
    local.set 16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              local.get 8
              local.get 10
              i64.shr_u
              i32.wrap_i64
              local.get 11
              select
              i32.const -1
              i32.const -1
              local.get 14
              i32.shl
              i32.const -1
              i32.xor
              local.get 14
              i32.const 31
              i32.gt_u
              select
              local.tee 11
              i32.and
              local.tee 14
              local.get 11
              i32.eq
              br_if 0 (;@5;)
              local.get 12
              i64.const 0
              local.get 14
              select
              local.get 13
              i64.or
              local.set 8
              local.get 14
              local.get 14
              i32.eqz
              i32.add
              local.get 9
              i32.load offset=8
              i32.add
              local.set 17
              block  ;; label = @6
                local.get 3
                i32.const 255
                i32.and
                local.tee 14
                i32.const 88
                i32.eq
                br_if 0 (;@6;)
                local.get 14
                i32.const 120
                i32.eq
                br_if 0 (;@6;)
                local.get 14
                i32.const 98
                i32.ne
                br_if 2 (;@4;)
                local.get 6
                i32.const 536
                i32.add
                local.get 6
                i32.const 420
                i32.add
                i32.store
                local.get 6
                i32.const 556
                i32.add
                local.get 6
                i32.const 428
                i32.add
                i32.store
                local.get 6
                i32.const 564
                i32.add
                local.get 6
                i32.const 424
                i32.add
                i32.store
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 16
                    br_if 0 (;@8;)
                    i32.const 68
                    local.set 5
                    i32.const 1
                    local.set 14
                    br 1 (;@7;)
                  end
                  local.get 6
                  i32.const 0
                  i32.store offset=420
                  local.get 6
                  i32.const 45
                  i32.store8 offset=420
                  local.get 6
                  i32.const 160
                  i32.add
                  local.get 1
                  local.get 6
                  i32.const 420
                  i32.add
                  i32.const 1
                  i32.const 68
                  i32.const 1
                  i32.const 1
                  call $runtime.sliceAppend
                  local.get 6
                  i32.const 540
                  i32.add
                  local.get 6
                  i32.load offset=160
                  local.tee 1
                  i32.store
                  local.get 6
                  i32.load offset=168
                  local.set 5
                  local.get 6
                  i32.load offset=164
                  local.set 14
                end
                local.get 6
                i32.const 544
                i32.add
                local.get 1
                i32.store
                local.get 6
                i32.const 136
                i32.add
                local.get 1
                local.get 14
                local.get 5
                local.get 8
                i32.const 0
                call $strconv.formatBits
                local.get 6
                i32.const 552
                i32.add
                local.get 6
                i32.load offset=148
                i32.store
                local.get 6
                i32.const 548
                i32.add
                local.get 6
                i32.load offset=136
                local.tee 5
                i32.store
                local.get 6
                i32.const 0
                i32.store offset=428
                local.get 6
                i32.const 112
                i32.store8 offset=428
                local.get 6
                i32.const 120
                i32.add
                local.get 5
                local.get 6
                i32.const 428
                i32.add
                local.get 6
                i32.load offset=140
                local.get 6
                i32.load offset=144
                i32.const 1
                i32.const 1
                call $runtime.sliceAppend
                local.get 6
                i32.const 560
                i32.add
                local.get 6
                i32.load offset=120
                local.tee 5
                i32.store
                local.get 6
                i32.load offset=128
                local.set 14
                local.get 6
                i32.load offset=124
                local.set 1
                block  ;; label = @7
                  local.get 17
                  local.get 9
                  i32.load
                  i32.sub
                  local.tee 9
                  i32.const 0
                  i32.lt_s
                  br_if 0 (;@7;)
                  local.get 6
                  i32.const 0
                  i32.store offset=424
                  local.get 6
                  i32.const 43
                  i32.store8 offset=424
                  local.get 6
                  i32.const 104
                  i32.add
                  local.get 5
                  local.get 6
                  i32.const 424
                  i32.add
                  local.get 1
                  local.get 14
                  i32.const 1
                  i32.const 1
                  call $runtime.sliceAppend
                  local.get 6
                  i32.const 568
                  i32.add
                  local.get 6
                  i32.load offset=104
                  local.tee 5
                  i32.store
                  local.get 6
                  i32.load offset=112
                  local.set 14
                  local.get 6
                  i32.load offset=108
                  local.set 1
                end
                local.get 6
                i32.const 572
                i32.add
                local.get 5
                i32.store
                local.get 6
                i32.const 80
                i32.add
                local.get 5
                local.get 1
                local.get 14
                local.get 9
                i64.extend_i32_s
                local.get 9
                i32.const 31
                i32.shr_u
                call $strconv.formatBits
                local.get 6
                i32.const 584
                i32.add
                local.get 6
                i32.load offset=80
                local.tee 5
                i32.store
                local.get 6
                i32.const 580
                i32.add
                local.get 6
                i32.load offset=92
                i32.store
                local.get 6
                i32.const 576
                i32.add
                local.get 5
                i32.store
                i32.const 0
                local.get 7
                i32.store offset=83624
                local.get 0
                local.get 6
                i64.load offset=84 align=4
                i64.store offset=4 align=4
                local.get 0
                local.get 5
                i32.store
                local.get 6
                i32.const 800
                i32.add
                global.set 0
                return
              end
              local.get 6
              i32.const 504
              i32.add
              i32.const 88
              i32.add
              local.get 6
              i32.const 420
              i32.add
              i32.store
              local.get 6
              i32.const 604
              i32.add
              local.get 6
              i32.const 428
              i32.add
              i32.store
              local.get 6
              i32.const 612
              i32.add
              local.get 6
              i32.const 424
              i32.add
              i32.store
              local.get 6
              i32.const 668
              i32.add
              local.get 6
              i32.const 472
              i32.add
              i32.store
              local.get 6
              i32.const 628
              i32.add
              local.get 6
              i32.const 456
              i32.add
              i32.store
              local.get 6
              i32.const 636
              i32.add
              local.get 6
              i32.const 452
              i32.add
              i32.store
              local.get 6
              i32.const 644
              i32.add
              local.get 6
              i32.const 448
              i32.add
              i32.store
              local.get 6
              i32.const 648
              i32.add
              local.get 6
              i32.const 444
              i32.add
              i32.store
              local.get 6
              i32.const 652
              i32.add
              local.get 6
              i32.const 440
              i32.add
              i32.store
              local.get 6
              i32.const 656
              i32.add
              local.get 6
              i32.const 436
              i32.add
              i32.store
              local.get 6
              i32.const 676
              i32.add
              local.get 6
              i32.const 432
              i32.add
              i32.store
              i32.const 0
              local.get 17
              local.get 8
              i64.eqz
              select
              local.set 9
              i64.const 0
              local.get 8
              i32.const 60
              local.get 5
              i32.sub
              local.tee 5
              i64.extend_i32_u
              i64.shl
              local.get 5
              i32.const 63
              i32.gt_u
              select
              local.set 8
              i32.const 1
              local.set 5
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 8
                  i64.eqz
                  br_if 1 (;@6;)
                  local.get 8
                  i64.const 1152921504606846976
                  i64.and
                  i64.const 0
                  i64.ne
                  br_if 1 (;@6;)
                  local.get 9
                  i32.const -1
                  i32.add
                  local.set 9
                  local.get 8
                  i64.const 1
                  i64.shl
                  local.set 8
                  br 0 (;@7;)
                end
              end
              block  ;; label = @6
                local.get 4
                i32.const 14
                i32.gt_u
                br_if 0 (;@6;)
                local.get 8
                i32.const 60
                local.get 4
                i32.const 2
                i32.shl
                local.tee 14
                i32.sub
                i64.extend_i32_u
                local.tee 10
                i64.shr_u
                local.tee 13
                local.get 8
                local.get 14
                i64.extend_i32_u
                i64.shl
                i64.const 1152921504606846975
                i64.and
                local.get 13
                i64.const 1
                i64.and
                i64.or
                i64.const 576460752303423488
                i64.gt_u
                i64.extend_i32_u
                i64.add
                local.get 10
                i64.shl
                local.tee 8
                i64.const 2305843009213693952
                i64.and
                i64.eqz
                br_if 0 (;@6;)
                local.get 9
                i32.const 1
                i32.add
                local.set 9
                local.get 8
                i64.const 1
                i64.shr_u
                local.set 8
              end
              i32.const 68
              local.set 14
              local.get 6
              i32.const 588
              i32.add
              i32.const 67148
              i32.const 67132
              local.get 3
              i32.const 255
              i32.and
              i32.const 88
              i32.eq
              select
              local.tee 11
              i32.store
              block  ;; label = @6
                local.get 16
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.const 0
                i32.store offset=420
                local.get 6
                i32.const 45
                i32.store8 offset=420
                local.get 6
                i32.const 336
                i32.add
                local.get 1
                local.get 6
                i32.const 420
                i32.add
                i32.const 1
                i32.const 68
                i32.const 1
                i32.const 1
                call $runtime.sliceAppend
                local.get 6
                i32.const 596
                i32.add
                local.get 6
                i32.load offset=336
                local.tee 1
                i32.store
                local.get 6
                i32.load offset=344
                local.set 14
                local.get 6
                i32.load offset=340
                local.set 5
              end
              local.get 6
              i32.const 600
              i32.add
              local.get 1
              i32.store
              local.get 6
              i32.const 0
              i32.store offset=428
              local.get 6
              local.get 3
              i32.store8 offset=429
              local.get 6
              i32.const 48
              i32.store8 offset=428
              local.get 6
              local.get 8
              i64.const 60
              i64.shr_u
              i32.wrap_i64
              i32.const 1
              i32.and
              i32.const 48
              i32.or
              i32.store8 offset=430
              local.get 6
              i32.const 320
              i32.add
              local.get 1
              local.get 6
              i32.const 428
              i32.add
              local.get 5
              local.get 14
              i32.const 3
              i32.const 1
              call $runtime.sliceAppend
              local.get 6
              i32.const 608
              i32.add
              local.get 6
              i32.load offset=320
              local.tee 5
              i32.store
              local.get 8
              i64.const 4
              i64.shl
              local.set 8
              local.get 6
              i32.load offset=328
              local.set 14
              local.get 6
              i32.load offset=324
              local.set 1
              local.get 4
              i32.const -1
              i32.gt_s
              br_if 2 (;@3;)
              local.get 8
              i64.eqz
              br_if 2 (;@3;)
              local.get 6
              i32.const 0
              i32.store offset=424
              local.get 6
              i32.const 46
              i32.store8 offset=424
              local.get 6
              i32.const 272
              i32.add
              local.get 5
              local.get 6
              i32.const 424
              i32.add
              local.get 1
              local.get 14
              i32.const 1
              i32.const 1
              call $runtime.sliceAppend
              local.get 6
              i32.const 616
              i32.add
              local.get 6
              i32.load offset=272
              local.tee 5
              i32.store
              i32.const 16
              i64.extend_i32_u
              local.set 13
              local.get 6
              i32.load offset=280
              local.set 14
              local.get 6
              i32.load offset=276
              local.set 1
              local.get 6
              i32.const 620
              i32.add
              local.set 15
              local.get 6
              i32.const 672
              i32.add
              local.set 16
              loop  ;; label = @6
                local.get 15
                local.get 5
                i32.store
                local.get 8
                i64.eqz
                br_if 4 (;@2;)
                local.get 8
                i64.const 60
                i64.shr_u
                local.tee 10
                local.get 13
                i64.ge_u
                br_if 5 (;@1;)
                local.get 11
                local.get 10
                i32.wrap_i64
                i32.add
                i32.load8_u
                local.set 4
                local.get 6
                i32.const 0
                i32.store offset=472
                local.get 6
                local.get 4
                i32.store8 offset=472
                local.get 6
                i32.const 256
                i32.add
                local.get 5
                local.get 6
                i32.const 472
                i32.add
                local.get 1
                local.get 14
                i32.const 1
                i32.const 1
                call $runtime.sliceAppend
                local.get 16
                local.get 6
                i32.load offset=256
                local.tee 5
                i32.store
                local.get 8
                i64.const 4
                i64.shl
                local.set 8
                local.get 6
                i32.load offset=264
                local.set 14
                local.get 6
                i32.load offset=260
                local.set 1
                br 0 (;@6;)
              end
            end
            local.get 6
            i32.const 528
            i32.add
            i32.const 71438
            i32.const 71434
            local.get 16
            select
            i32.const 71431
            local.get 13
            i64.eqz
            local.tee 5
            select
            local.tee 9
            i32.store
            local.get 6
            local.get 1
            local.get 9
            i32.const 1
            i32.const 68
            i32.const 4
            i32.const 3
            local.get 5
            select
            i32.const 1
            call $runtime.sliceAppend
            i32.const 0
            local.get 7
            i32.store offset=83624
            local.get 6
            i32.const 532
            i32.add
            local.get 6
            i32.load
            local.tee 5
            i32.store
            local.get 0
            local.get 6
            i32.load offset=8
            i32.store offset=8
            local.get 0
            local.get 5
            i32.store
            local.get 0
            local.get 6
            i32.load offset=4
            i32.store offset=4
            local.get 6
            i32.const 800
            i32.add
            global.set 0
            return
          end
          local.get 6
          i32.const 696
          i32.add
          i32.const 24
          call $runtime.alloc
          local.tee 5
          i32.store
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 4
                      i32.const -1
                      i32.gt_s
                      br_if 0 (;@9;)
                      local.get 6
                      i32.const 384
                      i32.add
                      i32.const 8
                      i32.add
                      i64.const 0
                      i64.store
                      local.get 6
                      i32.const 368
                      i32.add
                      i32.const 8
                      i32.add
                      i64.const 0
                      i64.store
                      local.get 6
                      i64.const 0
                      i64.store offset=400
                      local.get 6
                      i64.const 0
                      i64.store offset=408
                      local.get 6
                      i64.const 0
                      i64.store offset=384
                      local.get 6
                      i64.const 0
                      i64.store offset=368
                      local.get 6
                      i32.const 700
                      i32.add
                      local.get 6
                      i32.const 400
                      i32.add
                      i32.store
                      local.get 6
                      i32.const 704
                      i32.add
                      local.get 6
                      i32.const 384
                      i32.add
                      i32.store
                      local.get 6
                      i32.const 708
                      i32.add
                      local.get 6
                      i32.const 368
                      i32.add
                      i32.store
                      local.get 6
                      i32.const 716
                      i32.add
                      local.get 6
                      i32.const 472
                      i32.add
                      i32.store
                      local.get 6
                      i32.const 712
                      i32.add
                      local.get 6
                      i32.const 456
                      i32.add
                      i32.store
                      local.get 6
                      i32.const 0
                      i32.store8 offset=484
                      local.get 6
                      i32.const 0
                      i32.store offset=480
                      local.get 6
                      i64.const 0
                      i64.store offset=472
                      local.get 6
                      i32.const 0
                      i32.store8 offset=468
                      local.get 6
                      i32.const 0
                      i32.store offset=464
                      local.get 6
                      i64.const 0
                      i64.store offset=456
                      local.get 6
                      local.get 8
                      i64.store offset=400
                      local.get 9
                      i32.load
                      local.set 11
                      local.get 6
                      local.get 16
                      i32.store8 offset=412
                      local.get 6
                      local.get 17
                      local.get 11
                      i32.sub
                      local.tee 14
                      i32.store offset=408
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 14
                          i32.const 0
                          i32.gt_s
                          br_if 0 (;@11;)
                          i64.const 0
                          i64.const -1
                          i32.const 0
                          local.get 14
                          i32.sub
                          local.tee 15
                          i64.extend_i32_u
                          local.tee 10
                          i64.shl
                          local.get 8
                          i64.and
                          local.get 15
                          i32.const 63
                          i32.gt_u
                          local.tee 15
                          select
                          local.get 8
                          i64.ne
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 14
                          local.get 6
                          i32.const 0
                          i32.store offset=408
                          local.get 6
                          i64.const 0
                          local.get 8
                          local.get 10
                          i64.shr_u
                          local.get 15
                          select
                          local.tee 10
                          i64.store offset=400
                          local.get 10
                          local.set 13
                          i32.const 0
                          local.set 11
                          local.get 10
                          local.set 12
                          i32.const 0
                          local.set 18
                          br 1 (;@10;)
                        end
                        local.get 14
                        i32.const -1
                        i32.add
                        local.tee 18
                        local.get 14
                        i32.const -2
                        i32.add
                        i64.const 0
                        i64.const 1
                        local.get 11
                        i64.extend_i32_u
                        i64.shl
                        local.get 11
                        i32.const 63
                        i32.gt_u
                        select
                        local.get 8
                        i64.ne
                        local.get 17
                        local.get 9
                        i32.load offset=8
                        i32.sub
                        i32.const 1
                        i32.eq
                        i32.or
                        local.tee 15
                        select
                        local.set 11
                        local.get 8
                        i64.const 1
                        i64.shl
                        local.tee 10
                        local.get 8
                        i64.const 2
                        i64.shl
                        local.get 15
                        select
                        i64.const -1
                        i64.add
                        local.set 13
                        local.get 10
                        i64.const 1
                        i64.or
                        local.set 12
                        local.get 8
                        local.set 10
                      end
                      local.get 6
                      local.get 13
                      i64.store offset=384
                      local.get 6
                      local.get 11
                      i32.store offset=392
                      local.get 6
                      local.get 16
                      i32.const 1
                      i32.and
                      local.tee 15
                      i32.store8 offset=396
                      local.get 6
                      local.get 12
                      i64.store offset=368
                      local.get 6
                      local.get 18
                      i32.store offset=376
                      local.get 6
                      local.get 15
                      i32.store8 offset=380
                      i32.const 32
                      call $runtime.alloc
                      local.set 15
                      local.get 5
                      i64.const 137438953504
                      i64.store offset=4 align=4
                      local.get 5
                      local.get 15
                      i32.store
                      local.get 6
                      i32.const 720
                      i32.add
                      local.get 15
                      i32.store
                      local.get 6
                      i32.const 724
                      i32.add
                      local.get 6
                      i32.const 472
                      i32.add
                      i32.store
                      block  ;; label = @10
                        local.get 10
                        i64.const 0
                        i64.ne
                        br_if 0 (;@10;)
                        local.get 5
                        local.get 16
                        i32.store8 offset=20
                        local.get 5
                        i64.const 0
                        i64.store offset=12 align=4
                        br 5 (;@5;)
                      end
                      local.get 14
                      i32.eqz
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 3
                              i32.const 255
                              i32.and
                              local.tee 14
                              i32.const -101
                              i32.add
                              br_table 1 (;@12;) 4 (;@9;) 2 (;@11;) 0 (;@13;)
                            end
                            local.get 4
                            local.set 19
                            local.get 4
                            local.set 20
                            local.get 14
                            i32.const -69
                            i32.add
                            br_table 0 (;@12;) 2 (;@10;) 1 (;@11;) 2 (;@10;)
                          end
                          local.get 4
                          i32.const 1
                          i32.add
                          local.set 20
                          local.get 4
                          local.set 19
                          br 1 (;@10;)
                        end
                        local.get 4
                        i32.const 1
                        local.get 4
                        select
                        local.tee 19
                        local.set 20
                      end
                      block  ;; label = @10
                        local.get 20
                        i32.const 15
                        i32.gt_s
                        br_if 0 (;@10;)
                        i32.const 24
                        call $runtime.alloc
                        local.set 14
                        local.get 5
                        i64.const 103079215128
                        i64.store offset=4 align=4
                        local.get 5
                        local.get 14
                        i32.store
                        local.get 6
                        i32.const 752
                        i32.add
                        local.get 14
                        i32.store
                        local.get 6
                        i32.const 756
                        i32.add
                        local.get 6
                        i32.const 352
                        i32.add
                        i32.store
                        local.get 6
                        i32.const 760
                        i32.add
                        local.get 6
                        i32.const 472
                        i32.add
                        i32.store
                        local.get 6
                        i64.const 0
                        i64.store offset=360
                        local.get 6
                        local.get 16
                        i32.store8 offset=364
                        local.get 6
                        local.get 17
                        local.get 9
                        i32.load
                        i32.sub
                        i32.store offset=360
                        local.get 6
                        local.get 8
                        i64.store offset=352
                        block  ;; label = @11
                          local.get 8
                          i64.const 0
                          i64.ne
                          br_if 0 (;@11;)
                          local.get 5
                          local.get 16
                          i32.store8 offset=20
                          local.get 5
                          i64.const 0
                          i64.store offset=12 align=4
                          br 7 (;@4;)
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 20
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 6
                            i32.const 352
                            i32.add
                            call $_*strconv.extFloat_.Normalize
                            local.get 6
                            i32.const 72
                            i32.add
                            local.get 6
                            i32.const 352
                            i32.add
                            call $_*strconv.extFloat_.frexp10
                            i32.const 0
                            local.set 21
                            local.get 6
                            i64.load offset=352
                            local.tee 10
                            i64.const 0
                            i32.const 0
                            local.get 10
                            i32.const 0
                            local.get 6
                            i32.load offset=360
                            i32.sub
                            local.tee 22
                            i64.extend_i32_u
                            local.tee 13
                            i64.shr_u
                            i32.wrap_i64
                            local.get 22
                            i32.const 63
                            i32.gt_u
                            local.tee 14
                            select
                            local.tee 15
                            i64.extend_i32_u
                            local.tee 23
                            local.get 13
                            i64.shl
                            local.get 14
                            select
                            i64.sub
                            local.set 12
                            i64.const 1
                            local.set 10
                            local.get 6
                            i32.load offset=72
                            local.set 24
                            i32.const 0
                            local.set 14
                            loop  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 14
                                  i32.const 20
                                  i32.eq
                                  br_if 0 (;@15;)
                                  local.get 10
                                  local.get 23
                                  i64.le_u
                                  br_if 1 (;@14;)
                                  local.get 14
                                  local.set 21
                                end
                                i32.const 0
                                local.set 14
                                i64.const 1
                                local.set 25
                                block  ;; label = @15
                                  local.get 21
                                  local.get 20
                                  i32.gt_s
                                  br_if 0 (;@15;)
                                  local.get 15
                                  local.set 11
                                  i32.const 0
                                  local.set 26
                                  br 4 (;@11;)
                                end
                                local.get 21
                                local.get 20
                                i32.sub
                                local.tee 11
                                i32.const 19
                                i32.gt_u
                                br_if 13 (;@1;)
                                local.get 15
                                local.get 15
                                local.get 11
                                i32.const 3
                                i32.shl
                                i32.const 70480
                                i32.add
                                i64.load
                                local.tee 25
                                i32.wrap_i64
                                local.tee 18
                                i32.div_u
                                local.tee 11
                                local.get 18
                                i32.mul
                                i32.sub
                                local.set 26
                                br 3 (;@11;)
                              end
                              local.get 14
                              i32.const 1
                              i32.add
                              local.set 14
                              local.get 10
                              i64.const 10
                              i64.mul
                              local.set 10
                              br 0 (;@13;)
                            end
                          end
                          i32.const 34
                          i32.const 72072
                          call $runtime._panic
                          unreachable
                        end
                        local.get 6
                        i32.const 496
                        i32.add
                        i64.const 0
                        i64.store
                        local.get 6
                        i32.const 488
                        i32.add
                        i64.const 0
                        i64.store
                        local.get 6
                        i32.const 480
                        i32.add
                        i64.const 0
                        i64.store
                        local.get 6
                        i64.const 0
                        i64.store offset=472
                        local.get 6
                        i32.const 472
                        i32.add
                        i32.const 31
                        i32.add
                        local.set 18
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 11
                                  br_if 0 (;@15;)
                                  local.get 6
                                  i32.const 504
                                  i32.add
                                  local.set 27
                                  i32.const 0
                                  local.set 15
                                  local.get 6
                                  i32.const 764
                                  i32.add
                                  local.set 28
                                  local.get 14
                                  local.set 11
                                  block  ;; label = @16
                                    loop  ;; label = @17
                                      local.get 11
                                      i32.eqz
                                      br_if 1 (;@16;)
                                      local.get 28
                                      local.get 5
                                      i32.load
                                      local.tee 18
                                      i32.store
                                      local.get 15
                                      local.get 5
                                      i32.load offset=4
                                      i32.ge_u
                                      br_if 16 (;@1;)
                                      local.get 18
                                      local.get 15
                                      i32.add
                                      local.get 27
                                      local.get 11
                                      i32.add
                                      i32.load8_u
                                      i32.store8
                                      local.get 15
                                      i32.const 1
                                      i32.add
                                      local.set 15
                                      local.get 11
                                      i32.const 1
                                      i32.add
                                      local.set 11
                                      br 0 (;@17;)
                                    end
                                  end
                                  local.get 5
                                  local.get 21
                                  local.get 24
                                  i32.add
                                  i32.store offset=16
                                  local.get 5
                                  i32.const 0
                                  local.get 14
                                  i32.sub
                                  local.tee 11
                                  i32.store offset=12
                                  block  ;; label = @16
                                    local.get 20
                                    local.get 14
                                    i32.add
                                    local.tee 14
                                    i32.const 1
                                    i32.ge_s
                                    br_if 0 (;@16;)
                                    i64.const 1
                                    local.set 10
                                    br 4 (;@12;)
                                  end
                                  local.get 25
                                  i64.const 1
                                  i64.ne
                                  br_if 4 (;@11;)
                                  local.get 26
                                  br_if 4 (;@11;)
                                  i64.const 1
                                  local.set 10
                                  i64.const 0
                                  i64.const 1
                                  local.get 13
                                  i64.shl
                                  local.get 22
                                  i32.const 63
                                  i32.gt_u
                                  local.tee 15
                                  select
                                  local.set 29
                                  local.get 6
                                  i32.const 768
                                  i32.add
                                  local.set 27
                                  loop  ;; label = @16
                                    local.get 14
                                    i32.const 1
                                    i32.lt_s
                                    br_if 3 (;@13;)
                                    local.get 10
                                    i64.const 20
                                    i64.mul
                                    local.get 29
                                    i64.gt_u
                                    br_if 6 (;@10;)
                                    local.get 27
                                    local.get 5
                                    i32.load
                                    local.tee 18
                                    i32.store
                                    local.get 11
                                    local.get 5
                                    i32.load offset=4
                                    i32.ge_u
                                    br_if 15 (;@1;)
                                    local.get 10
                                    i64.const 10
                                    i64.mul
                                    local.set 10
                                    local.get 18
                                    local.get 11
                                    i32.add
                                    i32.const 48
                                    local.get 12
                                    i64.const 10
                                    i64.mul
                                    local.tee 12
                                    local.get 13
                                    i64.shr_u
                                    local.tee 23
                                    i32.wrap_i64
                                    i32.const 48
                                    i32.add
                                    local.get 15
                                    select
                                    i32.store8
                                    local.get 12
                                    i64.const 0
                                    local.get 23
                                    local.get 13
                                    i64.shl
                                    local.get 15
                                    select
                                    i64.sub
                                    local.set 12
                                    local.get 14
                                    i32.const -1
                                    i32.add
                                    local.set 14
                                    local.get 11
                                    i32.const 1
                                    i32.add
                                    local.set 11
                                    br 0 (;@16;)
                                  end
                                end
                                local.get 11
                                i32.const 10
                                i32.div_u
                                local.set 15
                                local.get 14
                                i32.const 31
                                i32.add
                                i32.const 31
                                i32.gt_u
                                br_if 13 (;@1;)
                                local.get 18
                                local.get 14
                                i32.add
                                local.get 15
                                i32.const -10
                                i32.mul
                                local.get 11
                                i32.add
                                i32.const 48
                                i32.add
                                i32.store8
                                local.get 14
                                i32.const -1
                                i32.add
                                local.set 14
                                local.get 15
                                local.set 11
                                br 0 (;@14;)
                              end
                            end
                            local.get 5
                            local.get 11
                            i32.store offset=12
                          end
                          local.get 5
                          local.get 12
                          i64.const 0
                          local.get 26
                          i64.extend_i32_u
                          local.get 13
                          i64.shl
                          local.get 22
                          i32.const 63
                          i32.gt_u
                          select
                          i64.or
                          local.get 25
                          local.get 22
                          local.get 10
                          call $strconv.adjustLastDigitFixed
                          i32.const 1
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                          local.get 5
                          i32.load offset=12
                          i32.const -1
                          i32.add
                          local.set 9
                          local.get 6
                          i32.const 772
                          i32.add
                          local.set 11
                          loop  ;; label = @12
                            local.get 9
                            i32.const -1
                            i32.le_s
                            br_if 8 (;@4;)
                            local.get 11
                            local.get 5
                            i32.load
                            local.tee 14
                            i32.store
                            local.get 9
                            local.get 5
                            i32.load offset=4
                            i32.ge_u
                            br_if 11 (;@1;)
                            local.get 14
                            local.get 9
                            i32.add
                            local.set 14
                            local.get 9
                            i32.const -1
                            i32.add
                            local.tee 15
                            local.set 9
                            local.get 14
                            i32.load8_u
                            i32.const 48
                            i32.eq
                            br_if 0 (;@12;)
                          end
                          local.get 5
                          local.get 15
                          i32.const 2
                          i32.add
                          i32.store offset=12
                          br 7 (;@4;)
                        end
                        i32.const 34
                        i32.const 72136
                        call $runtime._panic
                        unreachable
                      end
                      local.get 19
                      local.set 4
                    end
                    local.get 6
                    i32.const 56
                    i32.add
                    local.get 1
                    local.get 4
                    local.get 3
                    local.get 16
                    local.get 8
                    local.get 17
                    local.get 9
                    call $strconv.bigFtoa
                    i32.const 0
                    local.get 7
                    i32.store offset=83624
                    local.get 6
                    i32.const 748
                    i32.add
                    local.get 6
                    i32.load offset=56
                    local.tee 5
                    i32.store
                    local.get 0
                    local.get 6
                    i32.load offset=64
                    i32.store offset=8
                    local.get 0
                    local.get 5
                    i32.store
                    local.get 0
                    local.get 6
                    i32.load offset=60
                    i32.store offset=4
                    local.get 6
                    i32.const 800
                    i32.add
                    global.set 0
                    return
                  end
                  local.get 13
                  local.get 10
                  i64.ne
                  br_if 0 (;@7;)
                  local.get 11
                  br_if 0 (;@7;)
                  local.get 16
                  local.get 16
                  i32.xor
                  local.tee 15
                  i32.const 1
                  i32.and
                  br_if 0 (;@7;)
                  local.get 10
                  local.get 12
                  i64.ne
                  br_if 0 (;@7;)
                  local.get 18
                  br_if 0 (;@7;)
                  local.get 15
                  i32.const 1
                  i32.and
                  br_if 0 (;@7;)
                  local.get 6
                  i32.const 488
                  i32.add
                  i64.const 0
                  i64.store
                  local.get 6
                  i32.const 480
                  i32.add
                  i64.const 0
                  i64.store
                  local.get 6
                  i64.const 0
                  i64.store offset=472
                  local.get 6
                  i32.const 472
                  i32.add
                  i32.const 23
                  i32.add
                  local.set 14
                  i32.const 0
                  local.set 9
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 10
                      i64.eqz
                      br_if 1 (;@8;)
                      local.get 10
                      i64.const 10
                      i64.div_u
                      local.set 8
                      local.get 9
                      i32.const 23
                      i32.add
                      i32.const 23
                      i32.gt_u
                      br_if 8 (;@1;)
                      local.get 14
                      local.get 9
                      i32.add
                      local.get 8
                      i64.const -10
                      i64.mul
                      local.get 10
                      i64.add
                      i32.wrap_i64
                      i32.const 48
                      i32.add
                      i32.store8
                      local.get 9
                      i32.const -1
                      i32.add
                      local.set 9
                      local.get 8
                      local.set 10
                      br 0 (;@9;)
                    end
                  end
                  i32.const 0
                  local.set 14
                  i32.const 0
                  local.get 9
                  i32.sub
                  local.set 11
                  local.get 6
                  i32.const 496
                  i32.add
                  local.set 18
                  local.get 6
                  i32.const 728
                  i32.add
                  local.set 27
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 9
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 27
                      local.get 5
                      i32.load
                      local.tee 15
                      i32.store
                      local.get 14
                      local.get 5
                      i32.load offset=4
                      i32.ge_u
                      br_if 8 (;@1;)
                      local.get 15
                      local.get 14
                      i32.add
                      local.get 18
                      local.get 9
                      i32.add
                      i32.load8_u
                      i32.store8
                      local.get 9
                      i32.const 1
                      i32.add
                      local.set 9
                      local.get 14
                      i32.const 1
                      i32.add
                      local.set 14
                      br 0 (;@9;)
                    end
                  end
                  local.get 5
                  local.get 11
                  i32.store offset=16
                  local.get 5
                  local.get 11
                  i32.store offset=12
                  local.get 6
                  i32.const 736
                  i32.add
                  local.set 14
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 11
                      i32.const 0
                      i32.gt_s
                      br_if 0 (;@9;)
                      local.get 11
                      br_if 3 (;@6;)
                      local.get 5
                      i32.const 0
                      i32.store offset=16
                      br 3 (;@6;)
                    end
                    local.get 14
                    local.get 5
                    i32.load
                    local.tee 9
                    i32.store
                    local.get 5
                    i32.load offset=12
                    i32.const -1
                    i32.add
                    local.tee 11
                    local.get 5
                    i32.load offset=4
                    i32.ge_u
                    br_if 7 (;@1;)
                    local.get 9
                    local.get 11
                    i32.add
                    i32.load8_u
                    i32.const 48
                    i32.ne
                    br_if 2 (;@6;)
                    local.get 5
                    local.get 11
                    i32.store offset=12
                    br 0 (;@8;)
                  end
                end
                local.get 6
                i32.const 368
                i32.add
                call $_*strconv.extFloat_.Normalize
                block  ;; label = @7
                  local.get 14
                  local.get 6
                  i32.load offset=376
                  local.tee 15
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 15
                  i32.store offset=408
                  local.get 6
                  i64.const 0
                  local.get 10
                  local.get 14
                  local.get 15
                  i32.sub
                  local.tee 14
                  i64.extend_i32_u
                  i64.shl
                  local.get 14
                  i32.const 63
                  i32.gt_u
                  select
                  i64.store offset=400
                end
                block  ;; label = @7
                  local.get 11
                  local.get 15
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 15
                  i32.store offset=392
                  local.get 6
                  i64.const 0
                  local.get 13
                  local.get 11
                  local.get 15
                  i32.sub
                  local.tee 14
                  i64.extend_i32_u
                  i64.shl
                  local.get 14
                  i32.const 63
                  i32.gt_u
                  select
                  i64.store offset=384
                end
                local.get 6
                i32.const 48
                i32.add
                local.get 6
                i32.const 368
                i32.add
                call $_*strconv.extFloat_.frexp10
                local.get 6
                i32.load offset=48
                local.set 24
                local.get 6
                i32.const 384
                i32.add
                local.get 6
                i32.load offset=52
                i32.const 4
                i32.shl
                local.tee 14
                i32.const 67376
                i32.add
                i64.load
                local.tee 10
                local.get 14
                i32.const 67384
                i32.add
                i32.load
                local.tee 11
                local.get 14
                i32.const 67388
                i32.add
                i32.load8_u
                local.tee 14
                call $_*strconv.extFloat_.Multiply
                local.get 6
                i32.const 400
                i32.add
                local.get 10
                local.get 11
                local.get 14
                call $_*strconv.extFloat_.Multiply
                local.get 6
                local.get 6
                i64.load offset=384
                i64.const -1
                i64.add
                local.tee 10
                i64.store offset=384
                i64.const 1
                local.set 12
                local.get 6
                local.get 6
                i64.load offset=368
                i64.const 1
                i64.add
                local.tee 25
                i64.store offset=368
                local.get 25
                local.get 10
                i64.sub
                local.set 23
                i32.const 0
                local.set 26
                local.get 25
                i64.const 0
                i32.const 0
                local.get 25
                i32.const 0
                local.get 6
                i32.load offset=376
                i32.sub
                local.tee 21
                i64.extend_i32_u
                local.tee 10
                i64.shr_u
                i32.wrap_i64
                local.get 21
                i32.const 63
                i32.gt_u
                local.tee 14
                select
                local.tee 15
                i64.extend_i32_u
                local.tee 29
                local.get 10
                i64.shl
                local.get 14
                select
                i64.sub
                local.set 13
                local.get 25
                local.get 6
                i64.load offset=400
                i64.sub
                local.set 30
                i32.const 0
                local.set 14
                block  ;; label = @7
                  loop  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 14
                        i32.const 20
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 12
                        local.get 29
                        i64.le_u
                        br_if 1 (;@9;)
                        local.get 14
                        local.set 26
                      end
                      local.get 26
                      i32.const -1
                      i32.add
                      local.tee 14
                      i32.const 3
                      i32.shl
                      i32.const 70480
                      i32.add
                      local.set 18
                      i32.const 0
                      local.set 11
                      local.get 6
                      i32.const 740
                      i32.add
                      local.set 20
                      local.get 21
                      i32.const 63
                      i32.gt_u
                      local.set 22
                      block  ;; label = @10
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 14
                            i32.const -1
                            i32.eq
                            br_if 1 (;@11;)
                            local.get 14
                            i32.const 19
                            i32.gt_u
                            br_if 11 (;@1;)
                            local.get 18
                            i64.load
                            local.set 12
                            local.get 20
                            local.get 5
                            i32.load
                            local.tee 28
                            i32.store
                            local.get 15
                            local.get 12
                            i32.wrap_i64
                            local.tee 19
                            i32.div_u
                            local.set 27
                            local.get 11
                            local.get 5
                            i32.load offset=4
                            i32.ge_u
                            br_if 11 (;@1;)
                            local.get 28
                            local.get 11
                            i32.add
                            local.get 27
                            i32.const 48
                            i32.add
                            i32.store8
                            i64.const 0
                            local.get 15
                            local.get 27
                            local.get 19
                            i32.mul
                            i32.sub
                            local.tee 15
                            i64.extend_i32_u
                            local.get 10
                            i64.shl
                            local.get 22
                            select
                            local.get 13
                            i64.add
                            local.tee 29
                            local.get 23
                            i64.lt_u
                            br_if 2 (;@10;)
                            local.get 14
                            i32.const -1
                            i32.add
                            local.set 14
                            local.get 18
                            i32.const -8
                            i32.add
                            local.set 18
                            local.get 11
                            i32.const 1
                            i32.add
                            local.set 11
                            br 0 (;@12;)
                          end
                        end
                        local.get 5
                        local.get 26
                        i32.store offset=12
                        local.get 5
                        local.get 26
                        local.get 24
                        i32.add
                        i32.store offset=16
                        local.get 5
                        local.get 6
                        i32.load8_u offset=412
                        i32.const 1
                        i32.and
                        i32.store8 offset=20
                        i64.const 1
                        local.set 12
                        local.get 6
                        i32.const 732
                        i32.add
                        local.set 18
                        local.get 21
                        i32.const 63
                        i32.gt_u
                        local.set 14
                        loop  ;; label = @11
                          local.get 12
                          local.set 29
                          local.get 18
                          local.get 5
                          i32.load
                          local.tee 11
                          i32.store
                          local.get 5
                          i32.load offset=12
                          local.tee 15
                          local.get 5
                          i32.load offset=4
                          i32.ge_u
                          br_if 10 (;@1;)
                          local.get 11
                          local.get 15
                          i32.add
                          i32.const 0
                          local.get 13
                          i64.const 10
                          i64.mul
                          local.tee 13
                          local.get 10
                          i64.shr_u
                          i32.wrap_i64
                          local.get 14
                          select
                          local.tee 11
                          i32.const 48
                          i32.add
                          i32.store8
                          local.get 5
                          local.get 5
                          i32.load offset=12
                          i32.const 1
                          i32.add
                          i32.store offset=12
                          local.get 13
                          i64.const 0
                          local.get 11
                          i64.extend_i32_s
                          local.get 10
                          i64.shl
                          local.get 14
                          select
                          i64.sub
                          local.tee 13
                          local.get 29
                          i64.const 10
                          i64.mul
                          local.tee 12
                          local.get 23
                          i64.mul
                          local.tee 25
                          i64.ge_u
                          br_if 0 (;@11;)
                        end
                        local.get 5
                        local.get 13
                        local.get 12
                        local.get 30
                        i64.mul
                        local.get 25
                        i64.const 0
                        i64.const 1
                        local.get 10
                        i64.shl
                        local.get 21
                        i32.const 63
                        i32.gt_u
                        select
                        local.get 29
                        i64.const 20
                        i64.mul
                        call $strconv.adjustLastDigit
                        i32.const 1
                        i32.and
                        br_if 5 (;@5;)
                        br 3 (;@7;)
                      end
                      local.get 5
                      local.get 26
                      local.get 24
                      i32.add
                      i32.store offset=16
                      local.get 5
                      local.get 11
                      i32.const 1
                      i32.add
                      i32.store offset=12
                      local.get 5
                      local.get 6
                      i32.load8_u offset=412
                      i32.const 1
                      i32.and
                      i32.store8 offset=20
                      local.get 5
                      local.get 29
                      local.get 30
                      local.get 23
                      i64.const 0
                      local.get 12
                      local.get 10
                      i64.shl
                      local.get 21
                      i32.const 63
                      i32.gt_u
                      select
                      i64.const 2
                      call $strconv.adjustLastDigit
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 2 (;@7;)
                      br 4 (;@5;)
                    end
                    local.get 14
                    i32.const 1
                    i32.add
                    local.set 14
                    local.get 12
                    i64.const 10
                    i64.mul
                    local.set 12
                    br 0 (;@8;)
                  end
                end
                local.get 6
                i32.const 32
                i32.add
                local.get 1
                local.get 4
                local.get 3
                local.get 16
                local.get 8
                local.get 17
                local.get 9
                call $strconv.bigFtoa
                i32.const 0
                local.get 7
                i32.store offset=83624
                local.get 6
                i32.const 744
                i32.add
                local.get 6
                i32.load offset=32
                local.tee 5
                i32.store
                local.get 0
                local.get 6
                i32.load offset=40
                i32.store offset=8
                local.get 0
                local.get 5
                i32.store
                local.get 0
                local.get 6
                i32.load offset=36
                i32.store offset=4
                local.get 6
                i32.const 800
                i32.add
                global.set 0
                return
              end
              local.get 5
              local.get 16
              i32.store8 offset=20
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.const 255
                    i32.and
                    local.tee 9
                    i32.const -101
                    i32.add
                    br_table 1 (;@7;) 2 (;@6;) 3 (;@5;) 0 (;@8;)
                  end
                  local.get 4
                  local.set 19
                  local.get 9
                  i32.const -69
                  i32.add
                  br_table 0 (;@7;) 3 (;@4;) 2 (;@5;) 3 (;@4;)
                end
                local.get 5
                i32.load offset=12
                i32.const -1
                i32.add
                local.tee 9
                i32.const 0
                local.get 9
                i32.const 0
                i32.gt_s
                select
                local.set 19
                br 2 (;@4;)
              end
              local.get 5
              i32.load offset=12
              local.get 5
              i32.load offset=16
              i32.sub
              local.tee 9
              i32.const 0
              local.get 9
              i32.const 0
              i32.gt_s
              select
              local.set 19
              br 1 (;@4;)
            end
            local.get 5
            i32.load offset=12
            local.set 19
          end
          local.get 6
          i32.const 788
          i32.add
          local.get 5
          i32.load
          local.tee 9
          i32.store
          local.get 6
          i32.const 16
          i32.add
          local.get 1
          local.get 4
          i32.const 31
          i32.shr_u
          local.get 16
          local.get 9
          local.get 5
          i32.load offset=4
          local.get 5
          i32.load offset=8
          local.get 5
          i32.load offset=12
          local.get 5
          i32.load offset=16
          local.get 5
          i32.load8_u offset=20
          local.get 19
          local.get 3
          call $strconv.formatDigits
          i32.const 0
          local.get 7
          i32.store offset=83624
          local.get 6
          i32.const 792
          i32.add
          local.get 6
          i32.load offset=16
          local.tee 5
          i32.store
          local.get 0
          local.get 6
          i32.load offset=24
          i32.store offset=8
          local.get 0
          local.get 5
          i32.store
          local.get 0
          local.get 6
          i32.load offset=20
          i32.store offset=4
          local.get 6
          i32.const 800
          i32.add
          global.set 0
          return
        end
        local.get 4
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        local.get 6
        i32.const 0
        i32.store offset=436
        local.get 6
        i32.const 46
        i32.store8 offset=436
        local.get 6
        i32.const 304
        i32.add
        local.get 5
        local.get 6
        i32.const 436
        i32.add
        local.get 1
        local.get 14
        i32.const 1
        i32.const 1
        call $runtime.sliceAppend
        local.get 6
        i32.const 660
        i32.add
        local.get 6
        i32.load offset=304
        local.tee 5
        i32.store
        i32.const 16
        i64.extend_i32_u
        local.set 13
        local.get 6
        i32.load offset=312
        local.set 14
        local.get 6
        i32.load offset=308
        local.set 1
        local.get 6
        i32.const 664
        i32.add
        local.set 16
        local.get 6
        i32.const 680
        i32.add
        local.set 18
        loop  ;; label = @3
          local.get 16
          local.get 5
          i32.store
          local.get 4
          i32.eqz
          br_if 1 (;@2;)
          local.get 8
          i64.const 60
          i64.shr_u
          local.tee 10
          local.get 13
          i64.ge_u
          br_if 2 (;@1;)
          local.get 11
          local.get 10
          i32.wrap_i64
          i32.add
          i32.load8_u
          local.set 15
          local.get 6
          i32.const 0
          i32.store offset=432
          local.get 6
          local.get 15
          i32.store8 offset=432
          local.get 6
          i32.const 288
          i32.add
          local.get 5
          local.get 6
          i32.const 432
          i32.add
          local.get 1
          local.get 14
          i32.const 1
          i32.const 1
          call $runtime.sliceAppend
          local.get 18
          local.get 6
          i32.load offset=288
          local.tee 5
          i32.store
          local.get 4
          i32.const -1
          i32.add
          local.set 4
          local.get 8
          i64.const 4
          i64.shl
          local.set 8
          local.get 6
          i32.load offset=296
          local.set 14
          local.get 6
          i32.load offset=292
          local.set 1
          br 0 (;@3;)
        end
      end
      local.get 6
      i32.const 624
      i32.add
      local.get 5
      i32.store
      local.get 6
      i32.const 0
      i32.store offset=456
      local.get 6
      i32.const 112
      i32.const 80
      local.get 3
      i32.const 32
      i32.or
      i32.const 255
      i32.and
      local.get 3
      i32.const 255
      i32.and
      i32.eq
      select
      i32.store8 offset=456
      local.get 6
      i32.const 240
      i32.add
      local.get 5
      local.get 6
      i32.const 456
      i32.add
      local.get 1
      local.get 14
      i32.const 1
      i32.const 1
      call $runtime.sliceAppend
      local.get 6
      i32.const 632
      i32.add
      local.get 6
      i32.load offset=240
      local.tee 5
      i32.store
      local.get 6
      i32.const 0
      i32.store offset=452
      local.get 6
      i32.const 45
      i32.const 43
      local.get 9
      i32.const 0
      i32.lt_s
      select
      i32.store8 offset=452
      local.get 6
      i32.const 224
      i32.add
      local.get 5
      local.get 6
      i32.const 452
      i32.add
      local.get 6
      i32.load offset=244
      local.get 6
      i32.load offset=248
      i32.const 1
      i32.const 1
      call $runtime.sliceAppend
      local.get 6
      i32.const 640
      i32.add
      local.get 6
      i32.load offset=224
      local.tee 14
      i32.store
      local.get 6
      i32.load offset=232
      local.set 1
      local.get 6
      i32.load offset=228
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          local.get 9
          local.get 9
          i32.const 31
          i32.shr_s
          local.tee 5
          i32.add
          local.get 5
          i32.xor
          local.tee 5
          i32.const 99
          i32.gt_s
          br_if 0 (;@3;)
          local.get 6
          i32.const 0
          i32.store offset=448
          local.get 6
          local.get 5
          i32.const 10
          i32.div_s
          local.tee 9
          i32.const 48
          i32.add
          i32.store8 offset=448
          local.get 6
          local.get 5
          local.get 9
          i32.const 10
          i32.mul
          i32.sub
          i32.const 48
          i32.add
          i32.store8 offset=449
          local.get 6
          i32.const 176
          i32.add
          local.get 14
          local.get 6
          i32.const 448
          i32.add
          local.get 4
          local.get 1
          i32.const 2
          i32.const 1
          call $runtime.sliceAppend
          local.get 6
          i32.load offset=184
          local.set 9
          local.get 6
          i32.load offset=180
          local.set 14
          local.get 6
          i32.load offset=176
          local.set 5
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 5
          i32.const 999
          i32.gt_s
          br_if 0 (;@3;)
          local.get 6
          i32.const 0
          i32.store offset=444
          local.get 6
          local.get 5
          i32.const 65535
          i32.and
          local.tee 9
          i32.const 100
          i32.div_u
          i32.const 48
          i32.add
          i32.store8 offset=444
          local.get 6
          local.get 5
          local.get 9
          i32.const 10
          i32.div_u
          local.tee 9
          i32.const 10
          i32.mul
          i32.sub
          i32.const 48
          i32.or
          i32.store8 offset=446
          local.get 6
          local.get 9
          i32.const 255
          i32.and
          i32.const 10
          i32.rem_u
          i32.const 48
          i32.or
          i32.store8 offset=445
          local.get 6
          i32.const 192
          i32.add
          local.get 14
          local.get 6
          i32.const 444
          i32.add
          local.get 4
          local.get 1
          i32.const 3
          i32.const 1
          call $runtime.sliceAppend
          local.get 6
          i32.load offset=200
          local.set 9
          local.get 6
          i32.load offset=196
          local.set 14
          local.get 6
          i32.load offset=192
          local.set 5
          br 1 (;@2;)
        end
        local.get 6
        i32.const 0
        i32.store offset=440
        local.get 6
        local.get 5
        i32.const 1000
        i32.div_u
        i32.const 48
        i32.add
        i32.store8 offset=440
        local.get 6
        local.get 5
        i32.const 10
        i32.div_u
        local.tee 9
        i32.const 10
        i32.rem_u
        i32.const 48
        i32.or
        i32.store8 offset=442
        local.get 6
        local.get 5
        i32.const 100
        i32.div_u
        i32.const 255
        i32.and
        i32.const 10
        i32.rem_u
        i32.const 48
        i32.or
        i32.store8 offset=441
        local.get 6
        local.get 5
        local.get 9
        i32.const 10
        i32.mul
        i32.sub
        i32.const 48
        i32.or
        i32.store8 offset=443
        local.get 6
        i32.const 208
        i32.add
        local.get 14
        local.get 6
        i32.const 440
        i32.add
        local.get 4
        local.get 1
        i32.const 4
        i32.const 1
        call $runtime.sliceAppend
        local.get 6
        i32.load offset=216
        local.set 9
        local.get 6
        i32.load offset=212
        local.set 14
        local.get 6
        i32.load offset=208
        local.set 5
      end
      local.get 6
      i32.const 688
      i32.add
      local.get 5
      i32.store
      local.get 6
      i32.const 692
      i32.add
      local.get 5
      i32.store
      local.get 6
      i32.const 684
      i32.add
      local.get 5
      i32.store
      i32.const 0
      local.get 7
      i32.store offset=83624
      local.get 0
      local.get 9
      i32.store offset=8
      local.get 0
      local.get 14
      i32.store offset=4
      local.get 0
      local.get 5
      i32.store
      local.get 6
      i32.const 800
      i32.add
      global.set 0
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $strconv.formatBits (type 15) (param i32 i32 i32 i32 i64 i32)
    (local i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 6
    global.set 0
    local.get 6
    i32.const 0
    i32.store offset=28
    local.get 6
    i64.const 2
    i64.store offset=20 align=4
    i32.const 0
    i32.load offset=83624
    local.set 7
    i32.const 0
    local.get 6
    i32.const 16
    i32.add
    i32.store offset=83624
    local.get 6
    local.get 7
    i32.store offset=16
    local.get 6
    i32.const 65
    call $runtime.alloc
    local.tee 8
    i32.store offset=24
    i64.const 0
    local.get 4
    i64.sub
    local.get 4
    local.get 5
    i32.const 1
    i32.and
    select
    local.set 4
    local.get 8
    i32.const -2
    i32.add
    local.set 9
    i32.const 65
    local.set 10
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 4
          i64.const 1000000000
          i64.lt_u
          br_if 1 (;@2;)
          local.get 9
          local.get 10
          i32.add
          local.set 11
          local.get 4
          i64.const 1000000000
          i64.div_u
          local.tee 12
          i64.const -1000000000
          i64.mul
          local.get 4
          i64.add
          i32.wrap_i64
          local.set 13
          i32.const 0
          local.set 14
          block  ;; label = @4
            loop  ;; label = @5
              local.get 14
              i32.const -8
              i32.eq
              br_if 1 (;@4;)
              local.get 13
              i32.const 100
              i32.div_u
              local.set 15
              local.get 10
              local.get 14
              i32.add
              local.tee 16
              i32.const -1
              i32.add
              i32.const 64
              i32.gt_u
              br_if 4 (;@1;)
              local.get 11
              local.get 14
              i32.add
              local.tee 17
              i32.const 1
              i32.add
              local.get 13
              local.get 15
              i32.const 100
              i32.mul
              i32.sub
              i32.const 1
              i32.shl
              local.tee 13
              i32.const 1
              i32.or
              i32.const 67168
              i32.add
              i32.load8_u
              i32.store8
              local.get 16
              i32.const -2
              i32.add
              i32.const 65
              i32.ge_u
              br_if 4 (;@1;)
              local.get 17
              local.get 13
              i32.const 67168
              i32.add
              i32.load8_u
              i32.store8
              local.get 14
              i32.const -2
              i32.add
              local.set 14
              local.get 15
              local.set 13
              br 0 (;@5;)
            end
          end
          local.get 10
          local.get 14
          i32.add
          i32.const -1
          i32.add
          local.tee 10
          i32.const 64
          i32.gt_u
          br_if 2 (;@1;)
          local.get 13
          i32.const 1
          i32.shl
          i32.const 1
          i32.or
          local.tee 13
          i32.const 200
          i32.ge_u
          br_if 2 (;@1;)
          local.get 11
          local.get 14
          i32.add
          i32.const 1
          i32.add
          local.get 13
          i32.const 67168
          i32.add
          i32.load8_u
          i32.store8
          local.get 12
          local.set 4
          br 0 (;@3;)
        end
      end
      local.get 4
      i32.wrap_i64
      local.set 14
      block  ;; label = @2
        loop  ;; label = @3
          local.get 14
          i32.const 100
          i32.lt_u
          br_if 1 (;@2;)
          local.get 14
          i32.const 100
          i32.div_u
          local.set 13
          local.get 10
          i32.const -1
          i32.add
          i32.const 64
          i32.gt_u
          br_if 2 (;@1;)
          local.get 8
          local.get 10
          i32.add
          local.tee 15
          i32.const -1
          i32.add
          local.get 14
          local.get 13
          i32.const 100
          i32.mul
          i32.sub
          i32.const 1
          i32.shl
          local.tee 14
          i32.const 1
          i32.or
          i32.const 67168
          i32.add
          i32.load8_u
          i32.store8
          local.get 10
          i32.const -2
          i32.add
          local.tee 16
          i32.const 65
          i32.ge_u
          br_if 2 (;@1;)
          local.get 15
          i32.const -2
          i32.add
          local.get 14
          i32.const 67168
          i32.add
          i32.load8_u
          i32.store8
          local.get 16
          local.set 10
          local.get 13
          local.set 14
          br 0 (;@3;)
        end
      end
      local.get 10
      i32.const -1
      i32.add
      local.tee 13
      i32.const 64
      i32.gt_u
      br_if 0 (;@1;)
      local.get 8
      local.get 10
      i32.add
      local.tee 15
      i32.const -1
      i32.add
      local.get 14
      i32.const 1
      i32.shl
      local.tee 16
      i32.const 1
      i32.or
      i32.const 67168
      i32.add
      i32.load8_u
      i32.store8
      block  ;; label = @2
        local.get 14
        i32.const 9
        i32.le_u
        br_if 0 (;@2;)
        local.get 10
        i32.const -2
        i32.add
        local.tee 13
        i32.const 64
        i32.gt_u
        br_if 1 (;@1;)
        local.get 15
        i32.const -2
        i32.add
        local.get 16
        i32.const 67168
        i32.add
        i32.load8_u
        i32.store8
      end
      block  ;; label = @2
        local.get 5
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 13
        i32.const -1
        i32.add
        local.tee 13
        i32.const 64
        i32.gt_u
        br_if 1 (;@1;)
        local.get 8
        local.get 13
        i32.add
        i32.const 45
        i32.store8
      end
      local.get 6
      local.get 1
      local.get 8
      local.get 13
      i32.add
      local.get 2
      local.get 3
      i32.const 65
      local.get 13
      i32.sub
      i32.const 1
      call $runtime.sliceAppend
      i32.const 0
      local.get 7
      i32.store offset=83624
      local.get 6
      i32.const 28
      i32.add
      local.get 6
      i32.load
      local.tee 14
      i32.store
      local.get 6
      i32.load offset=8
      local.set 13
      local.get 0
      i32.const 0
      i32.store offset=16
      local.get 0
      local.get 13
      i32.store offset=8
      local.get 0
      local.get 14
      i32.store
      local.get 6
      i32.load offset=4
      local.set 14
      local.get 0
      i32.const 72144
      i32.store offset=12
      local.get 0
      local.get 14
      i32.store offset=4
      local.get 6
      i32.const 32
      i32.add
      global.set 0
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $_*strconv.extFloat_.Normalize (type 2) (param i32)
    (local i64 i32 i64 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i64.load
          local.tee 1
          i64.eqz
          br_if 0 (;@3;)
          local.get 1
          i64.const 32
          i64.shr_u
          local.get 1
          local.get 1
          i64.const 4294967295
          i64.gt_u
          local.tee 2
          select
          local.tee 3
          i64.const 16
          i64.shr_u
          local.get 3
          local.get 3
          i64.const 65535
          i64.gt_u
          local.tee 4
          select
          local.tee 3
          i64.const 8
          i64.shr_u
          local.get 3
          local.get 3
          i64.const 255
          i64.gt_u
          local.tee 5
          select
          i32.wrap_i64
          local.tee 6
          i32.const 256
          i32.ge_u
          br_if 2 (;@1;)
          local.get 0
          local.get 0
          i32.load offset=8
          i32.const 64
          local.get 2
          i32.const 5
          i32.shl
          local.tee 2
          i32.const 16
          i32.or
          local.get 2
          local.get 4
          select
          local.tee 2
          i32.const 8
          i32.or
          local.get 2
          local.get 5
          select
          local.get 6
          i32.const 66448
          i32.add
          i32.load8_u
          i32.add
          i32.sub
          local.tee 2
          i32.sub
          i32.store offset=8
          local.get 0
          i64.const 0
          local.get 1
          local.get 2
          i64.extend_i32_u
          i64.shl
          local.get 2
          i32.const 63
          i32.gt_u
          select
          i64.store
        end
        return
      end
      call $runtime.nilPanic
      unreachable
    end
    call $runtime.lookupPanic
    unreachable)
  (func $_*strconv.extFloat_.frexp10 (type 4) (param i32 i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=8
      local.tee 2
      i32.const 64
      i32.add
      local.set 3
      i32.const -46
      local.get 2
      i32.sub
      i32.const 28
      i32.mul
      i32.const 93
      i32.div_s
      i32.const 348
      i32.add
      i32.const 8
      i32.div_s
      local.set 2
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 86
            i32.gt_u
            br_if 0 (;@4;)
            i32.const 1
            local.set 4
            local.get 3
            local.get 2
            i32.const 4
            i32.shl
            i32.const 67384
            i32.add
            i32.load
            i32.add
            local.tee 5
            i32.const -60
            i32.lt_s
            br_if 1 (;@3;)
            i32.const -1
            local.set 4
            local.get 5
            i32.const -32
            i32.gt_s
            br_if 1 (;@3;)
            local.get 1
            local.get 2
            i32.const 4
            i32.shl
            local.tee 4
            i32.const 67376
            i32.add
            i64.load
            local.get 4
            i32.const 67384
            i32.add
            i32.load
            local.get 4
            i32.const 67388
            i32.add
            i32.load8_u
            call $_*strconv.extFloat_.Multiply
            local.get 0
            local.get 2
            i32.store offset=4
            local.get 0
            i32.const 348
            local.get 2
            i32.const 3
            i32.shl
            i32.sub
            i32.store
            return
          end
          call $runtime.lookupPanic
          unreachable
        end
        local.get 2
        local.get 4
        i32.add
        local.set 2
        br 0 (;@2;)
      end
    end
    call $runtime.nilPanic
    unreachable)
  (func $strconv.adjustLastDigitFixed (type 16) (param i32 i64 i64 i32 i64) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    i32.const 0
    i32.store offset=12
    local.get 5
    i64.const 2
    i64.store offset=4 align=4
    i32.const 0
    i32.load offset=83624
    local.set 6
    i32.const 0
    local.get 5
    i32.store offset=83624
    local.get 5
    local.get 6
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                i64.const 0
                local.get 2
                local.get 3
                i64.extend_i32_u
                i64.shl
                local.get 3
                i32.const 63
                i32.gt_u
                select
                local.tee 2
                local.get 1
                i64.lt_u
                br_if 0 (;@6;)
                local.get 4
                i64.const 1
                i64.shl
                local.get 2
                i64.gt_u
                br_if 1 (;@5;)
                i32.const 1
                local.set 3
                local.get 4
                local.get 1
                i64.add
                i64.const 1
                i64.shl
                local.get 2
                i64.lt_u
                br_if 4 (;@2;)
                i32.const 0
                local.set 3
                local.get 1
                local.get 4
                i64.sub
                i64.const 1
                i64.shl
                local.get 2
                i64.le_u
                br_if 4 (;@2;)
                local.get 0
                i32.eqz
                br_if 2 (;@4;)
                local.get 0
                i32.load offset=12
                i32.const -1
                i32.add
                local.tee 3
                i32.const -1
                local.get 3
                i32.const -1
                i32.lt_s
                select
                local.set 7
                local.get 5
                i32.const 12
                i32.add
                local.set 8
                loop  ;; label = @7
                  local.get 3
                  i32.const -1
                  i32.le_s
                  br_if 4 (;@3;)
                  local.get 8
                  local.get 0
                  i32.load
                  local.tee 9
                  i32.store
                  local.get 3
                  local.get 0
                  i32.load offset=4
                  i32.ge_u
                  br_if 6 (;@1;)
                  block  ;; label = @8
                    local.get 9
                    local.get 3
                    i32.add
                    i32.load8_u
                    i32.const 57
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 3
                    local.set 7
                    br 5 (;@3;)
                  end
                  local.get 0
                  local.get 0
                  i32.load offset=12
                  i32.const -1
                  i32.add
                  i32.store offset=12
                  local.get 3
                  i32.const -1
                  i32.add
                  local.set 3
                  br 0 (;@7;)
                end
              end
              i32.const 34
              i32.const 67064
              call $runtime._panic
              unreachable
            end
            i32.const 34
            i32.const 67104
            call $runtime._panic
            unreachable
          end
          call $runtime.nilPanic
          unreachable
        end
        local.get 5
        i32.const 8
        i32.add
        local.get 0
        i32.load
        local.tee 9
        i32.store
        local.get 0
        i32.load offset=4
        local.set 3
        block  ;; label = @3
          local.get 7
          i32.const 0
          i32.ge_s
          br_if 0 (;@3;)
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 9
          i32.const 49
          i32.store8
          i32.const 1
          local.set 3
          local.get 0
          i32.const 1
          i32.store offset=12
          local.get 0
          local.get 0
          i32.load offset=16
          i32.const 1
          i32.add
          i32.store offset=16
          br 1 (;@2;)
        end
        local.get 7
        local.get 3
        i32.ge_u
        br_if 1 (;@1;)
        i32.const 1
        local.set 3
        local.get 9
        local.get 7
        i32.add
        local.tee 0
        local.get 0
        i32.load8_u
        i32.const 1
        i32.add
        i32.store8
      end
      i32.const 0
      local.get 6
      i32.store offset=83624
      local.get 5
      i32.const 16
      i32.add
      global.set 0
      local.get 3
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $strconv.bigFtoa (type 17) (param i32 i32 i32 i32 i32 i64 i32 i32)
    (local i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 8
    global.set 0
    local.get 8
    i32.const 0
    i32.store offset=124
    local.get 8
    i64.const 0
    i64.store offset=116 align=4
    local.get 8
    i64.const 0
    i64.store offset=108 align=4
    local.get 8
    i64.const 0
    i64.store offset=100 align=4
    local.get 8
    i64.const 8
    i64.store offset=92 align=4
    i32.const 0
    i32.load offset=83624
    local.set 9
    i32.const 0
    local.get 8
    i32.const 88
    i32.add
    i32.store offset=83624
    local.get 8
    local.get 9
    i32.store offset=88
    local.get 8
    i32.const 812
    call $runtime.alloc
    local.tee 10
    i32.store offset=96
    local.get 8
    local.get 10
    i32.store offset=120
    local.get 10
    local.get 5
    call $_*strconv.decimal_.Assign
    block  ;; label = @1
      local.get 7
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 10
    local.get 6
    local.get 7
    i32.load
    i32.sub
    call $_*strconv.decimal_.Shift
    local.get 8
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get 8
    i32.const 29
    i32.add
    i64.const 0
    i64.store align=1
    local.get 8
    i64.const 0
    i64.store offset=16
    local.get 8
    i32.const 116
    i32.add
    local.get 8
    i32.const 16
    i32.add
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 3
                        i32.const 255
                        i32.and
                        local.tee 7
                        i32.const -101
                        i32.add
                        br_table 2 (;@8;) 0 (;@10;) 4 (;@6;) 1 (;@9;)
                      end
                      local.get 10
                      i32.load offset=804
                      local.get 2
                      i32.add
                      local.set 7
                      br 2 (;@7;)
                    end
                    local.get 2
                    local.set 6
                    local.get 7
                    i32.const -69
                    i32.add
                    br_table 0 (;@8;) 4 (;@4;) 2 (;@6;) 4 (;@4;)
                  end
                  local.get 2
                  i32.const 1
                  i32.add
                  local.set 7
                end
                local.get 2
                local.set 6
                br 1 (;@5;)
              end
              local.get 2
              i32.const 1
              local.get 2
              select
              local.tee 7
              local.set 6
            end
            local.get 10
            local.get 7
            call $_*strconv.decimal_.Round
          end
          local.get 8
          i32.const 16
          i32.add
          i32.const 8
          i32.add
          local.tee 7
          i64.const 0
          i64.store
          local.get 8
          i32.const 16
          i32.add
          i32.const 13
          i32.add
          i64.const 0
          i64.store align=1
          local.get 8
          i32.const 64
          i32.add
          i32.const 8
          i32.add
          i64.const 0
          i64.store
          local.get 8
          i32.const 64
          i32.add
          i32.const 13
          i32.add
          i64.const 0
          i64.store align=1
          local.get 7
          i32.const 800
          i32.store
          local.get 8
          i64.const 0
          i64.store offset=16
          local.get 8
          i64.const 0
          i64.store offset=64
          local.get 8
          i32.const 112
          i32.add
          local.get 8
          i32.const 64
          i32.add
          i32.store
          local.get 8
          i32.const 800
          i32.store offset=20
          local.get 8
          local.get 10
          i32.store offset=16
          local.get 8
          local.get 10
          i32.load offset=800
          local.tee 7
          i32.store offset=28
          local.get 8
          local.get 10
          i32.load offset=804
          local.tee 11
          i32.store offset=32
          br 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i64.const 0
            i64.ne
            br_if 0 (;@4;)
            local.get 10
            i32.const 0
            i32.store offset=800
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 7
            i32.load offset=8
            i32.const 1
            i32.add
            local.tee 11
            local.get 6
            i32.ge_s
            br_if 0 (;@4;)
            local.get 10
            i32.load offset=804
            local.get 10
            i32.load offset=800
            i32.sub
            i32.const 332
            i32.mul
            local.get 6
            local.get 7
            i32.load
            i32.sub
            i32.const 100
            i32.mul
            i32.ge_s
            br_if 1 (;@3;)
          end
          local.get 8
          i32.const 100
          i32.add
          i32.const 812
          call $runtime.alloc
          local.tee 12
          i32.store
          local.get 12
          local.get 5
          i64.const 1
          i64.shl
          local.tee 13
          i64.const 1
          i64.or
          call $_*strconv.decimal_.Assign
          local.get 12
          local.get 7
          i32.load
          i32.const -1
          i32.xor
          local.get 6
          i32.add
          call $_*strconv.decimal_.Shift
          local.get 7
          i64.load32_u
          local.set 14
          local.get 8
          i32.const 104
          i32.add
          i32.const 812
          call $runtime.alloc
          local.tee 15
          i32.store
          local.get 15
          local.get 5
          local.get 13
          local.get 11
          local.get 6
          i32.eq
          i64.const 0
          i64.const 1
          local.get 14
          i64.shl
          local.get 14
          i64.const 63
          i64.gt_u
          select
          local.get 5
          i64.lt_u
          i32.or
          local.tee 11
          select
          i64.const 1
          i64.shl
          i64.const -1
          i64.add
          call $_*strconv.decimal_.Assign
          local.get 15
          local.get 7
          i32.load
          i32.const -1
          i32.xor
          local.get 6
          i32.add
          local.get 11
          i32.const 1
          i32.xor
          i32.sub
          call $_*strconv.decimal_.Shift
          local.get 15
          local.get 12
          i32.load offset=804
          local.tee 7
          i32.sub
          local.set 16
          i32.const 0
          local.get 7
          i32.sub
          local.set 17
          local.get 10
          local.get 10
          i32.load offset=804
          local.get 7
          i32.sub
          local.tee 18
          i32.add
          local.set 19
          local.get 5
          i64.const 1
          i64.and
          local.tee 5
          i32.wrap_i64
          local.set 20
          local.get 10
          i32.load offset=800
          local.set 21
          i32.const 0
          local.set 22
          i32.const 0
          local.set 7
          loop  ;; label = @4
            local.get 18
            local.get 7
            i32.add
            local.tee 23
            local.get 21
            i32.ge_s
            br_if 1 (;@3;)
            i32.const 48
            local.set 11
            i32.const 48
            local.set 6
            block  ;; label = @5
              local.get 17
              local.get 7
              i32.add
              local.get 15
              i32.load offset=804
              local.tee 24
              i32.add
              local.tee 25
              i32.const 0
              i32.lt_s
              br_if 0 (;@5;)
              i32.const 48
              local.set 6
              local.get 25
              local.get 15
              i32.load offset=800
              i32.ge_s
              br_if 0 (;@5;)
              local.get 25
              i32.const 800
              i32.ge_u
              br_if 4 (;@1;)
              local.get 16
              local.get 7
              local.get 24
              i32.add
              i32.add
              i32.load8_u
              local.set 6
            end
            block  ;; label = @5
              local.get 23
              i32.const -1
              i32.le_s
              br_if 0 (;@5;)
              local.get 23
              i32.const 800
              i32.ge_u
              br_if 4 (;@1;)
              local.get 19
              local.get 7
              i32.add
              i32.load8_u
              local.set 11
            end
            i32.const 48
            local.set 26
            block  ;; label = @5
              local.get 7
              local.get 12
              i32.load offset=800
              local.tee 27
              i32.ge_s
              br_if 0 (;@5;)
              local.get 7
              i32.const 800
              i32.ge_u
              br_if 4 (;@1;)
              local.get 12
              local.get 7
              i32.add
              i32.load8_u
              local.set 26
            end
            block  ;; label = @5
              local.get 6
              i32.const 255
              i32.and
              local.get 11
              i32.const 255
              i32.and
              local.tee 28
              i32.ne
              local.tee 6
              local.get 20
              i32.or
              i32.const 1
              i32.eq
              br_if 0 (;@5;)
              local.get 25
              i32.const 1
              i32.add
              local.get 15
              i32.load offset=800
              i32.eq
              local.set 6
            end
            i32.const 2
            local.set 24
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 22
                        i32.const 255
                        i32.and
                        local.tee 29
                        br_if 0 (;@10;)
                        i32.const 1
                        local.set 25
                        local.get 11
                        i32.const 1
                        i32.add
                        i32.const 255
                        i32.and
                        local.get 26
                        i32.const 255
                        i32.and
                        i32.lt_u
                        br_if 1 (;@9;)
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 29
                          br_if 0 (;@11;)
                          i32.const 1
                          local.set 24
                          local.get 28
                          local.get 26
                          i32.const 255
                          i32.and
                          i32.ne
                          br_if 1 (;@10;)
                        end
                        i32.const 1
                        local.set 25
                        block  ;; label = @11
                          local.get 29
                          i32.const 1
                          i32.ne
                          br_if 0 (;@11;)
                          i32.const 2
                          local.set 24
                          local.get 28
                          i32.const 57
                          i32.ne
                          local.get 26
                          i32.const 255
                          i32.and
                          i32.const 48
                          i32.ne
                          i32.or
                          br_if 2 (;@9;)
                        end
                        local.get 22
                        local.set 24
                        local.get 29
                        i32.eqz
                        br_if 2 (;@8;)
                      end
                      i32.const 1
                      local.set 25
                      local.get 5
                      i64.eqz
                      br_if 0 (;@9;)
                      local.get 24
                      i32.const 255
                      i32.and
                      i32.const 1
                      i32.ne
                      br_if 0 (;@9;)
                      i32.const 1
                      local.set 24
                      local.get 7
                      i32.const 1
                      i32.add
                      local.get 27
                      i32.lt_s
                      local.set 25
                    end
                    local.get 6
                    local.get 25
                    i32.and
                    i32.const 1
                    i32.ne
                    br_if 1 (;@7;)
                    local.get 10
                    local.get 23
                    i32.const 1
                    i32.add
                    call $_*strconv.decimal_.Round
                    br 5 (;@3;)
                  end
                  i32.const 0
                  local.set 24
                  local.get 6
                  i32.eqz
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
                local.get 6
                br_if 1 (;@5;)
                local.get 25
                i32.eqz
                br_if 0 (;@6;)
                local.get 10
                local.get 23
                i32.const 1
                i32.add
                call $_*strconv.decimal_.RoundUp
                br 3 (;@3;)
              end
              local.get 7
              i32.const 1
              i32.add
              local.set 7
              local.get 24
              local.set 22
              br 1 (;@4;)
            end
          end
          local.get 10
          local.get 23
          i32.const 1
          i32.add
          call $_*strconv.decimal_.RoundDown
        end
        local.get 8
        i32.const 16
        i32.add
        i32.const 8
        i32.add
        local.tee 7
        i64.const 0
        i64.store
        local.get 8
        i32.const 16
        i32.add
        i32.const 13
        i32.add
        i64.const 0
        i64.store align=1
        local.get 8
        i32.const 40
        i32.add
        i32.const 8
        i32.add
        i64.const 0
        i64.store
        local.get 8
        i32.const 40
        i32.add
        i32.const 13
        i32.add
        i64.const 0
        i64.store align=1
        local.get 7
        i32.const 800
        i32.store
        local.get 8
        i64.const 0
        i64.store offset=16
        local.get 8
        i64.const 0
        i64.store offset=40
        local.get 8
        i32.const 108
        i32.add
        local.get 8
        i32.const 40
        i32.add
        i32.store
        local.get 8
        i32.const 800
        i32.store offset=20
        local.get 8
        local.get 10
        i32.store offset=16
        local.get 8
        local.get 10
        i32.load offset=800
        local.tee 7
        i32.store offset=28
        local.get 8
        local.get 10
        i32.load offset=804
        local.tee 11
        i32.store offset=32
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.const 255
                i32.and
                local.tee 25
                i32.const -101
                i32.add
                br_table 1 (;@5;) 2 (;@4;) 3 (;@3;) 0 (;@6;)
              end
              local.get 2
              local.set 6
              local.get 25
              i32.const -69
              i32.add
              br_table 0 (;@5;) 3 (;@2;) 2 (;@3;) 3 (;@2;)
            end
            local.get 7
            i32.const -1
            i32.add
            local.set 6
            br 2 (;@2;)
          end
          local.get 7
          local.get 11
          i32.sub
          local.tee 6
          i32.const 0
          local.get 6
          i32.const 0
          i32.gt_s
          select
          local.set 6
          br 1 (;@2;)
        end
        local.get 7
        local.set 6
      end
      local.get 8
      local.get 1
      local.get 2
      i32.const 31
      i32.shr_u
      local.get 4
      local.get 10
      i32.const 800
      i32.const 800
      local.get 7
      local.get 11
      i32.const 0
      local.get 6
      local.get 3
      call $strconv.formatDigits
      i32.const 0
      local.get 9
      i32.store offset=83624
      local.get 8
      i32.const 124
      i32.add
      local.get 8
      i32.load
      local.tee 7
      i32.store
      local.get 0
      local.get 8
      i32.load offset=8
      i32.store offset=8
      local.get 0
      local.get 7
      i32.store
      local.get 0
      local.get 8
      i32.load offset=4
      i32.store offset=4
      local.get 8
      i32.const 128
      i32.add
      global.set 0
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $_*strconv.extFloat_.Multiply (type 18) (param i32 i64 i32 i32)
    (local i32 i64 i64 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 2
    i32.store offset=8
    local.get 4
    local.get 1
    i64.store
    local.get 4
    local.get 3
    i32.const 1
    i32.and
    i32.store8 offset=12
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 0
    local.get 2
    local.get 0
    i32.load offset=8
    i32.add
    i32.const 64
    i32.add
    i32.store offset=8
    local.get 0
    local.get 0
    i64.load
    local.tee 5
    local.get 1
    i64.mul
    i64.const 63
    i64.shr_u
    local.get 5
    i64.const 32
    i64.shr_u
    local.tee 6
    local.get 1
    i64.const 32
    i64.shr_u
    local.tee 7
    i64.mul
    i64.add
    local.get 5
    i64.const 4294967295
    i64.and
    local.tee 5
    local.get 1
    i64.const 4294967295
    i64.and
    local.tee 1
    i64.mul
    i64.const 32
    i64.shr_u
    local.get 6
    local.get 1
    i64.mul
    i64.add
    local.tee 1
    i64.const 32
    i64.shr_u
    i64.add
    local.get 1
    i64.const 4294967295
    i64.and
    local.get 5
    local.get 7
    i64.mul
    i64.add
    i64.const 32
    i64.shr_u
    i64.add
    i64.store
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func $strconv.adjustLastDigit (type 19) (param i32 i64 i64 i64 i64 i64) (result i32)
    (local i32 i64 i32)
    i32.const 0
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i64.const 1
        i64.shl
        local.get 4
        i64.gt_u
        br_if 0 (;@2;)
        local.get 4
        i64.const 1
        i64.shr_u
        local.get 5
        i64.add
        local.set 7
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 7
                local.get 1
                i64.add
                local.get 2
                i64.ge_u
                br_if 0 (;@6;)
                local.get 0
                br_if 1 (;@5;)
                br 5 (;@1;)
              end
              local.get 1
              local.get 3
              local.get 5
              i64.sub
              i64.gt_u
              br_if 3 (;@2;)
              local.get 1
              local.get 5
              i64.lt_u
              br_if 3 (;@2;)
              local.get 4
              local.get 1
              i64.add
              local.get 7
              local.get 2
              i64.add
              i64.le_u
              br_if 3 (;@2;)
              local.get 0
              i32.eqz
              br_if 4 (;@1;)
              i32.const 1
              local.set 6
              local.get 0
              i32.load offset=12
              i32.const 1
              i32.ne
              br_if 3 (;@2;)
              local.get 0
              i32.load offset=4
              i32.eqz
              br_if 2 (;@3;)
              local.get 0
              i32.load
              i32.load8_u
              i32.const 48
              i32.ne
              br_if 3 (;@2;)
              local.get 0
              i64.const 0
              i64.store offset=12 align=4
              br 3 (;@2;)
            end
            local.get 0
            i32.load offset=12
            i32.const -1
            i32.add
            local.tee 8
            local.get 0
            i32.load offset=4
            i32.ge_u
            br_if 1 (;@3;)
            local.get 0
            i32.load
            local.get 8
            i32.add
            local.tee 8
            local.get 8
            i32.load8_u
            i32.const -1
            i32.add
            i32.store8
            local.get 1
            local.get 4
            i64.add
            local.set 1
            br 0 (;@4;)
          end
        end
        call $runtime.lookupPanic
        unreachable
      end
      local.get 6
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $strconv.formatDigits (type 20) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 176
    i32.sub
    local.tee 12
    global.set 0
    local.get 12
    i32.const 101
    i32.add
    i64.const 0
    i64.store align=1
    local.get 12
    i64.const 0
    i64.store offset=164 align=4
    local.get 12
    i64.const 0
    i64.store offset=156 align=4
    local.get 12
    i64.const 0
    i64.store offset=148 align=4
    local.get 12
    i64.const 0
    i64.store offset=140 align=4
    local.get 12
    i64.const 0
    i64.store offset=96
    local.get 12
    i64.const 0
    i64.store offset=88
    local.get 12
    i64.const 0
    i64.store offset=132 align=4
    local.get 12
    i32.const 11
    i32.store offset=124
    i32.const 0
    i32.load offset=83624
    local.set 13
    i32.const 0
    local.get 12
    i32.const 120
    i32.add
    i32.store offset=83624
    local.get 12
    local.get 13
    i32.store offset=120
    local.get 12
    local.get 4
    i32.store offset=164
    local.get 12
    local.get 4
    i32.store offset=156
    local.get 12
    local.get 4
    i32.store offset=148
    local.get 12
    local.get 4
    i32.store offset=140
    local.get 12
    local.get 9
    i32.const 1
    i32.and
    i32.store8 offset=108
    local.get 12
    local.get 8
    i32.store offset=104
    local.get 12
    local.get 7
    i32.store offset=100
    local.get 12
    local.get 6
    i32.store offset=96
    local.get 12
    local.get 5
    i32.store offset=92
    local.get 12
    local.get 4
    i32.store offset=88
    local.get 12
    local.get 12
    i32.const 88
    i32.add
    i32.store offset=128
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 11
            i32.const 255
            i32.and
            local.tee 14
            i32.const -101
            i32.add
            br_table 1 (;@3;) 2 (;@2;) 3 (;@1;) 0 (;@4;)
          end
          block  ;; label = @4
            local.get 14
            i32.const -69
            i32.add
            br_table 1 (;@3;) 0 (;@4;) 3 (;@1;) 0 (;@4;)
          end
          local.get 12
          i32.const 0
          i32.store offset=116
          local.get 12
          i32.const 132
          i32.add
          local.get 12
          i32.const 116
          i32.add
          i32.store
          local.get 12
          local.get 11
          i32.store8 offset=117
          local.get 12
          i32.const 37
          i32.store8 offset=116
          local.get 12
          i32.const 8
          i32.add
          local.get 1
          local.get 12
          i32.const 116
          i32.add
          i32.const 1
          i32.const 68
          i32.const 2
          i32.const 1
          call $runtime.sliceAppend
          i32.const 0
          local.get 13
          i32.store offset=83624
          local.get 12
          i32.const 136
          i32.add
          local.get 12
          i32.load offset=8
          local.tee 4
          i32.store
          local.get 0
          local.get 12
          i32.load offset=16
          i32.store offset=8
          local.get 0
          local.get 4
          i32.store
          local.get 0
          local.get 12
          i32.load offset=12
          i32.store offset=4
          local.get 12
          i32.const 176
          i32.add
          global.set 0
          return
        end
        local.get 12
        i32.const 24
        i32.add
        local.get 1
        local.get 3
        local.get 4
        local.get 5
        local.get 6
        local.get 7
        local.get 8
        local.get 9
        local.get 10
        local.get 11
        call $strconv.fmtE
        i32.const 0
        local.get 13
        i32.store offset=83624
        local.get 12
        i32.const 144
        i32.add
        local.get 12
        i32.load offset=24
        local.tee 4
        i32.store
        local.get 0
        local.get 12
        i32.load offset=32
        i32.store offset=8
        local.get 0
        local.get 4
        i32.store
        local.get 0
        local.get 12
        i32.load offset=28
        i32.store offset=4
        local.get 12
        i32.const 176
        i32.add
        global.set 0
        return
      end
      local.get 12
      i32.const 40
      i32.add
      local.get 1
      local.get 3
      local.get 4
      local.get 5
      local.get 6
      local.get 7
      local.get 8
      local.get 9
      local.get 10
      call $strconv.fmtF
      i32.const 0
      local.get 13
      i32.store offset=83624
      local.get 12
      i32.const 152
      i32.add
      local.get 12
      i32.load offset=40
      local.tee 4
      i32.store
      local.get 0
      local.get 12
      i32.load offset=48
      i32.store offset=8
      local.get 0
      local.get 4
      i32.store
      local.get 0
      local.get 12
      i32.load offset=44
      i32.store offset=4
      local.get 12
      i32.const 176
      i32.add
      global.set 0
      return
    end
    local.get 7
    local.get 10
    i32.lt_s
    local.set 14
    block  ;; label = @1
      block  ;; label = @2
        local.get 8
        i32.const -1
        i32.add
        local.tee 15
        i32.const -4
        i32.lt_s
        br_if 0 (;@2;)
        local.get 15
        i32.const 6
        local.get 7
        local.get 10
        local.get 7
        local.get 8
        i32.ge_s
        select
        local.get 10
        local.get 14
        select
        local.get 2
        i32.const 1
        i32.and
        select
        i32.lt_s
        br_if 1 (;@1;)
      end
      local.get 12
      i32.const 56
      i32.add
      local.get 1
      local.get 3
      local.get 4
      local.get 5
      local.get 6
      local.get 7
      local.get 8
      local.get 9
      local.get 7
      local.get 10
      local.get 14
      select
      i32.const -1
      i32.add
      local.get 11
      i32.const -2
      i32.add
      call $strconv.fmtE
      i32.const 0
      local.get 13
      i32.store offset=83624
      local.get 12
      i32.const 160
      i32.add
      local.get 12
      i32.load offset=56
      local.tee 4
      i32.store
      local.get 0
      local.get 12
      i32.load offset=64
      i32.store offset=8
      local.get 0
      local.get 4
      i32.store
      local.get 0
      local.get 12
      i32.load offset=60
      i32.store offset=4
      local.get 12
      i32.const 176
      i32.add
      global.set 0
      return
    end
    local.get 12
    i32.const 72
    i32.add
    local.get 1
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    local.get 7
    local.get 8
    local.get 9
    local.get 7
    local.get 10
    local.get 8
    local.get 10
    i32.lt_s
    select
    local.get 8
    i32.sub
    local.tee 10
    i32.const 0
    local.get 10
    i32.const 0
    i32.gt_s
    select
    call $strconv.fmtF
    i32.const 0
    local.get 13
    i32.store offset=83624
    local.get 12
    i32.const 168
    i32.add
    local.get 12
    i32.load offset=72
    local.tee 4
    i32.store
    local.get 0
    local.get 12
    i32.load offset=80
    i32.store offset=8
    local.get 0
    local.get 4
    i32.store
    local.get 0
    local.get 12
    i32.load offset=76
    i32.store offset=4
    local.get 12
    i32.const 176
    i32.add
    global.set 0)
  (func $strconv.AppendQuote (type 21) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 6
    global.set 0
    local.get 6
    i64.const 1
    i64.store offset=20 align=4
    i32.const 0
    i32.load offset=83624
    local.set 7
    i32.const 0
    local.get 6
    i32.const 16
    i32.add
    i32.store offset=83624
    local.get 6
    local.get 7
    i32.store offset=16
    local.get 6
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    i32.const 0
    call $strconv.appendQuotedWith
    i32.const 0
    local.get 7
    i32.store offset=83624
    local.get 6
    local.get 6
    i32.load
    local.tee 7
    i32.store offset=24
    local.get 0
    local.get 6
    i32.load offset=8
    i32.store offset=8
    local.get 0
    local.get 7
    i32.store
    local.get 0
    local.get 6
    i32.load offset=4
    i32.store offset=4
    local.get 6
    i32.const 32
    i32.add
    global.set 0)
  (func $strconv.appendQuotedWith (type 12) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 192
    i32.sub
    local.tee 7
    global.set 0
    local.get 7
    i64.const 68719476736
    i64.store offset=120
    local.get 7
    i64.const 0
    i64.store offset=184
    local.get 7
    i64.const 0
    i64.store offset=176
    local.get 7
    i64.const 0
    i64.store offset=168
    local.get 7
    i64.const 0
    i64.store offset=160
    local.get 7
    i64.const 0
    i64.store offset=152
    local.get 7
    i64.const 0
    i64.store offset=144
    local.get 7
    i64.const 0
    i64.store offset=136
    local.get 7
    i64.const 0
    i64.store offset=128
    i32.const 0
    i32.load offset=83624
    local.set 8
    i32.const 0
    local.get 7
    i32.const 120
    i32.add
    i32.store offset=83624
    local.get 7
    local.get 8
    i32.store offset=120
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          local.get 2
          i32.sub
          local.get 5
          i32.lt_s
          br_if 0 (;@3;)
          local.get 1
          local.set 9
          br 1 (;@2;)
        end
        local.get 2
        local.get 5
        i32.add
        i32.const 2
        i32.add
        local.tee 3
        local.get 2
        i32.lt_u
        br_if 1 (;@1;)
        local.get 3
        i32.const 0
        i32.lt_s
        br_if 1 (;@1;)
        local.get 7
        i32.const 188
        i32.add
        local.get 3
        call $runtime.alloc
        local.tee 9
        i32.store
        local.get 9
        local.get 1
        local.get 2
        call $memcpy
        drop
      end
      local.get 7
      i32.const 128
      i32.add
      local.get 9
      i32.store
      local.get 7
      i32.const 0
      i32.store offset=116
      local.get 7
      i32.const 34
      i32.store8 offset=116
      local.get 7
      i32.const 132
      i32.add
      local.get 7
      i32.const 116
      i32.add
      i32.store
      local.get 7
      i32.const 88
      i32.add
      local.get 9
      local.get 7
      i32.const 116
      i32.add
      local.get 2
      local.get 3
      i32.const 1
      i32.const 1
      call $runtime.sliceAppend
      local.get 7
      i32.const 136
      i32.add
      local.get 7
      i32.load offset=88
      local.tee 3
      i32.store
      local.get 7
      i32.const 160
      i32.add
      local.get 7
      i32.const 108
      i32.add
      i32.store
      local.get 7
      i32.const 152
      i32.add
      local.get 7
      i32.const 112
      i32.add
      i32.store
      local.get 7
      i32.load offset=96
      local.set 1
      local.get 7
      i32.load offset=92
      local.set 10
      local.get 7
      i32.const 144
      i32.add
      local.set 11
      local.get 7
      i32.const 140
      i32.add
      local.set 12
      local.get 7
      i32.const 148
      i32.add
      local.set 13
      local.get 7
      i32.const 156
      i32.add
      local.set 14
      local.get 7
      i32.const 168
      i32.add
      local.set 15
      local.get 7
      i32.const 164
      i32.add
      local.set 16
      local.get 7
      i32.const 176
      i32.add
      local.set 17
      local.get 7
      i32.const 172
      i32.add
      local.set 18
      loop  ;; label = @2
        local.get 11
        local.get 3
        i32.store
        local.get 12
        local.get 4
        i32.store
        block  ;; label = @3
          local.get 5
          i32.const 0
          i32.gt_s
          br_if 0 (;@3;)
          local.get 7
          i32.const 0
          i32.store offset=104
          local.get 7
          i32.const 180
          i32.add
          local.get 7
          i32.const 104
          i32.add
          i32.store
          local.get 7
          i32.const 34
          i32.store8 offset=104
          local.get 7
          i32.const 72
          i32.add
          local.get 3
          local.get 7
          i32.const 104
          i32.add
          local.get 10
          local.get 1
          i32.const 1
          i32.const 1
          call $runtime.sliceAppend
          i32.const 0
          local.get 8
          i32.store offset=83624
          local.get 7
          i32.const 184
          i32.add
          local.get 7
          i32.load offset=72
          local.tee 4
          i32.store
          local.get 0
          local.get 7
          i32.load offset=80
          i32.store offset=8
          local.get 0
          local.get 4
          i32.store
          local.get 0
          local.get 7
          i32.load offset=76
          i32.store offset=4
          local.get 7
          i32.const 192
          i32.add
          global.set 0
          return
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.load8_s
              local.tee 2
              i32.const 0
              i32.lt_s
              br_if 0 (;@5;)
              local.get 2
              i32.const 255
              i32.and
              local.set 9
              i32.const 1
              local.set 2
              br 1 (;@4;)
            end
            local.get 7
            i32.const 64
            i32.add
            local.get 4
            local.get 5
            call $unicode/utf8.DecodeRuneInString
            local.get 7
            i32.load offset=64
            local.set 9
            local.get 7
            i32.load offset=68
            local.tee 2
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            local.get 9
            i32.const 65533
            i32.ne
            br_if 0 (;@4;)
            i32.const 1
            local.set 2
            local.get 7
            i32.const 32
            i32.add
            local.get 3
            i32.const 67130
            local.get 10
            local.get 1
            i32.const 2
            i32.const 1
            call $runtime.sliceAppend
            local.get 13
            local.get 7
            i32.load offset=32
            local.tee 3
            i32.store
            local.get 4
            i32.load8_u
            local.set 9
            local.get 7
            i32.const 0
            i32.store offset=112
            local.get 7
            local.get 9
            i32.const 4
            i32.shr_u
            i32.const 67132
            i32.add
            i32.load8_u
            i32.store8 offset=112
            local.get 7
            i32.const 16
            i32.add
            local.get 3
            local.get 7
            i32.const 112
            i32.add
            local.get 7
            i32.load offset=36
            local.get 7
            i32.load offset=40
            i32.const 1
            i32.const 1
            call $runtime.sliceAppend
            local.get 14
            local.get 7
            i32.load offset=16
            local.tee 3
            i32.store
            local.get 4
            i32.load8_u
            local.set 9
            local.get 7
            i32.const 0
            i32.store offset=108
            local.get 7
            local.get 9
            i32.const 15
            i32.and
            i32.const 67132
            i32.add
            i32.load8_u
            i32.store8 offset=108
            local.get 7
            local.get 3
            local.get 7
            i32.const 108
            i32.add
            local.get 7
            i32.load offset=20
            local.get 7
            i32.load offset=24
            i32.const 1
            i32.const 1
            call $runtime.sliceAppend
            local.get 15
            local.get 7
            i32.load
            local.tee 3
            i32.store
            local.get 16
            local.get 3
            i32.store
            local.get 7
            i32.load offset=8
            local.set 1
            local.get 7
            i32.load offset=4
            local.set 10
            br 1 (;@3;)
          end
          local.get 7
          i32.const 48
          i32.add
          local.get 3
          local.get 10
          local.get 1
          local.get 9
          i32.const 34
          local.get 6
          call $strconv.appendEscapedRune
          local.get 17
          local.get 7
          i32.load offset=48
          local.tee 3
          i32.store
          local.get 18
          local.get 3
          i32.store
          local.get 5
          local.get 2
          i32.lt_u
          br_if 2 (;@1;)
          local.get 7
          i32.load offset=56
          local.set 1
          local.get 7
          i32.load offset=52
          local.set 10
        end
        local.get 5
        local.get 2
        i32.sub
        local.set 5
        local.get 4
        local.get 2
        i32.add
        local.set 4
        br 0 (;@2;)
      end
    end
    call $runtime.slicePanic
    unreachable)
  (func $strconv.appendEscapedRune (type 12) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 448
    i32.sub
    local.tee 7
    global.set 0
    local.get 7
    i64.const 124554051584
    i64.store offset=320
    local.get 7
    i64.const 0
    i64.store offset=328
    local.get 7
    i32.const 0
    i32.store offset=440
    local.get 7
    i64.const 0
    i64.store offset=432
    local.get 7
    i64.const 0
    i64.store offset=424
    local.get 7
    i64.const 0
    i64.store offset=416
    local.get 7
    i64.const 0
    i64.store offset=408
    local.get 7
    i64.const 0
    i64.store offset=400
    local.get 7
    i64.const 0
    i64.store offset=392
    local.get 7
    i64.const 0
    i64.store offset=384
    local.get 7
    i64.const 0
    i64.store offset=376
    local.get 7
    i64.const 0
    i64.store offset=368
    local.get 7
    i64.const 0
    i64.store offset=360
    local.get 7
    i64.const 0
    i64.store offset=352
    local.get 7
    i64.const 0
    i64.store offset=344
    local.get 7
    i64.const 0
    i64.store offset=336
    local.get 7
    i32.const 0
    i32.store offset=316
    i32.const 0
    i32.load offset=83624
    local.set 8
    i32.const 0
    local.get 7
    i32.const 320
    i32.add
    i32.store offset=83624
    local.get 7
    local.get 8
    i32.store offset=320
    local.get 7
    local.get 7
    i32.const 316
    i32.add
    i32.store offset=328
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 92
          i32.eq
          br_if 0 (;@3;)
          local.get 5
          i32.const 255
          i32.and
          local.get 4
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 6
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.const 127
            i32.gt_s
            br_if 3 (;@1;)
            local.get 4
            call $strconv.IsPrint
            i32.const 1
            i32.and
            br_if 2 (;@2;)
            br 3 (;@1;)
          end
          local.get 4
          call $strconv.IsPrint
          i32.const 1
          i32.and
          i32.eqz
          br_if 2 (;@1;)
          local.get 7
          i32.const 272
          i32.add
          local.get 1
          local.get 7
          i32.const 316
          i32.add
          local.get 2
          local.get 3
          local.get 7
          i32.const 316
          i32.add
          i32.const 4
          local.get 4
          call $unicode/utf8.EncodeRune
          i32.const 1
          call $runtime.sliceAppend
          i32.const 0
          local.get 8
          i32.store offset=83624
          local.get 7
          i32.const 440
          i32.add
          local.get 7
          i32.load offset=272
          local.tee 4
          i32.store
          local.get 0
          local.get 7
          i32.load offset=280
          i32.store offset=8
          local.get 0
          local.get 4
          i32.store
          local.get 0
          local.get 7
          i32.load offset=276
          i32.store offset=4
          local.get 7
          i32.const 448
          i32.add
          global.set 0
          return
        end
        local.get 7
        i32.const 0
        i32.store offset=312
        local.get 7
        i32.const 332
        i32.add
        local.get 7
        i32.const 312
        i32.add
        i32.store
        local.get 7
        i32.const 92
        i32.store8 offset=312
        local.get 7
        i32.const 16
        i32.add
        local.get 1
        local.get 7
        i32.const 312
        i32.add
        local.get 2
        local.get 3
        i32.const 1
        i32.const 1
        call $runtime.sliceAppend
        local.get 7
        i32.const 336
        i32.add
        local.get 7
        i32.load offset=16
        local.tee 1
        i32.store
        local.get 7
        i32.const 0
        i32.store offset=308
        local.get 7
        i32.const 340
        i32.add
        local.get 7
        i32.const 308
        i32.add
        i32.store
        local.get 7
        local.get 4
        i32.store8 offset=308
        local.get 7
        local.get 1
        local.get 7
        i32.const 308
        i32.add
        local.get 7
        i32.load offset=20
        local.get 7
        i32.load offset=24
        i32.const 1
        i32.const 1
        call $runtime.sliceAppend
        i32.const 0
        local.get 8
        i32.store offset=83624
        local.get 7
        i32.const 344
        i32.add
        local.get 7
        i32.load
        local.tee 4
        i32.store
        local.get 0
        local.get 7
        i32.load offset=8
        i32.store offset=8
        local.get 0
        local.get 4
        i32.store
        local.get 0
        local.get 7
        i32.load offset=4
        i32.store offset=4
        local.get 7
        i32.const 448
        i32.add
        global.set 0
        return
      end
      local.get 7
      i32.const 0
      i32.store offset=304
      local.get 7
      i32.const 348
      i32.add
      local.get 7
      i32.const 304
      i32.add
      i32.store
      local.get 7
      local.get 4
      i32.store8 offset=304
      local.get 7
      i32.const 32
      i32.add
      local.get 1
      local.get 7
      i32.const 304
      i32.add
      local.get 2
      local.get 3
      i32.const 1
      i32.const 1
      call $runtime.sliceAppend
      i32.const 0
      local.get 8
      i32.store offset=83624
      local.get 7
      i32.const 352
      i32.add
      local.get 7
      i32.load offset=32
      local.tee 4
      i32.store
      local.get 0
      local.get 7
      i32.load offset=40
      i32.store offset=8
      local.get 0
      local.get 4
      i32.store
      local.get 0
      local.get 7
      i32.load offset=36
      i32.store offset=4
      local.get 7
      i32.const 448
      i32.add
      global.set 0
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 4
                      i32.const -7
                      i32.add
                      br_table 0 (;@9;) 1 (;@8;) 5 (;@4;) 3 (;@6;) 6 (;@3;) 2 (;@7;) 4 (;@5;) 7 (;@2;)
                    end
                    local.get 7
                    i32.const 160
                    i32.add
                    local.get 1
                    i32.const 67112
                    local.get 2
                    local.get 3
                    i32.const 2
                    i32.const 1
                    call $runtime.sliceAppend
                    local.get 7
                    i32.const 356
                    i32.add
                    local.get 7
                    i32.load offset=160
                    local.tee 1
                    i32.store
                    local.get 7
                    i32.load offset=168
                    local.set 2
                    local.get 7
                    i32.load offset=164
                    local.set 3
                    br 7 (;@1;)
                  end
                  local.get 7
                  i32.const 176
                  i32.add
                  local.get 1
                  i32.const 67114
                  local.get 2
                  local.get 3
                  i32.const 2
                  i32.const 1
                  call $runtime.sliceAppend
                  local.get 7
                  i32.const 364
                  i32.add
                  local.get 7
                  i32.load offset=176
                  local.tee 1
                  i32.store
                  local.get 7
                  i32.load offset=184
                  local.set 2
                  local.get 7
                  i32.load offset=180
                  local.set 3
                  br 6 (;@1;)
                end
                local.get 7
                i32.const 192
                i32.add
                local.get 1
                i32.const 67116
                local.get 2
                local.get 3
                i32.const 2
                i32.const 1
                call $runtime.sliceAppend
                local.get 7
                i32.const 368
                i32.add
                local.get 7
                i32.load offset=192
                local.tee 1
                i32.store
                local.get 7
                i32.load offset=200
                local.set 2
                local.get 7
                i32.load offset=196
                local.set 3
                br 5 (;@1;)
              end
              local.get 7
              i32.const 208
              i32.add
              local.get 1
              i32.const 67118
              local.get 2
              local.get 3
              i32.const 2
              i32.const 1
              call $runtime.sliceAppend
              local.get 7
              i32.const 372
              i32.add
              local.get 7
              i32.load offset=208
              local.tee 1
              i32.store
              local.get 7
              i32.load offset=216
              local.set 2
              local.get 7
              i32.load offset=212
              local.set 3
              br 4 (;@1;)
            end
            local.get 7
            i32.const 224
            i32.add
            local.get 1
            i32.const 67120
            local.get 2
            local.get 3
            i32.const 2
            i32.const 1
            call $runtime.sliceAppend
            local.get 7
            i32.const 376
            i32.add
            local.get 7
            i32.load offset=224
            local.tee 1
            i32.store
            local.get 7
            i32.load offset=232
            local.set 2
            local.get 7
            i32.load offset=228
            local.set 3
            br 3 (;@1;)
          end
          local.get 7
          i32.const 240
          i32.add
          local.get 1
          i32.const 67122
          local.get 2
          local.get 3
          i32.const 2
          i32.const 1
          call $runtime.sliceAppend
          local.get 7
          i32.const 380
          i32.add
          local.get 7
          i32.load offset=240
          local.tee 1
          i32.store
          local.get 7
          i32.load offset=248
          local.set 2
          local.get 7
          i32.load offset=244
          local.set 3
          br 2 (;@1;)
        end
        local.get 7
        i32.const 256
        i32.add
        local.get 1
        i32.const 67124
        local.get 2
        local.get 3
        i32.const 2
        i32.const 1
        call $runtime.sliceAppend
        local.get 7
        i32.const 384
        i32.add
        local.get 7
        i32.load offset=256
        local.tee 1
        i32.store
        local.get 7
        i32.load offset=264
        local.set 2
        local.get 7
        i32.load offset=260
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.const 31
        i32.gt_s
        br_if 0 (;@2;)
        local.get 7
        i32.const 80
        i32.add
        local.get 1
        i32.const 67130
        local.get 2
        local.get 3
        i32.const 2
        i32.const 1
        call $runtime.sliceAppend
        local.get 7
        i32.const 388
        i32.add
        local.get 7
        i32.load offset=80
        local.tee 1
        i32.store
        local.get 7
        i32.const 0
        i32.store offset=300
        local.get 7
        i32.const 392
        i32.add
        local.get 7
        i32.const 300
        i32.add
        i32.store
        local.get 7
        local.get 4
        i32.const 4
        i32.shr_u
        i32.const 15
        i32.and
        i32.const 67132
        i32.add
        i32.load8_u
        i32.store8 offset=300
        local.get 7
        i32.const 64
        i32.add
        local.get 1
        local.get 7
        i32.const 300
        i32.add
        local.get 7
        i32.load offset=84
        local.get 7
        i32.load offset=88
        i32.const 1
        i32.const 1
        call $runtime.sliceAppend
        local.get 7
        i32.const 396
        i32.add
        local.get 7
        i32.load offset=64
        local.tee 1
        i32.store
        local.get 7
        i32.const 0
        i32.store offset=296
        local.get 7
        i32.const 400
        i32.add
        local.get 7
        i32.const 296
        i32.add
        i32.store
        local.get 7
        local.get 4
        i32.const 15
        i32.and
        i32.const 67132
        i32.add
        i32.load8_u
        i32.store8 offset=296
        local.get 7
        i32.const 48
        i32.add
        local.get 1
        local.get 7
        i32.const 296
        i32.add
        local.get 7
        i32.load offset=68
        local.get 7
        i32.load offset=72
        i32.const 1
        i32.const 1
        call $runtime.sliceAppend
        local.get 7
        i32.const 404
        i32.add
        local.get 7
        i32.load offset=48
        local.tee 1
        i32.store
        local.get 7
        i32.load offset=56
        local.set 2
        local.get 7
        i32.load offset=52
        local.set 3
        br 1 (;@1;)
      end
      i32.const 65533
      local.set 6
      block  ;; label = @2
        local.get 4
        i32.const 1114112
        i32.ge_s
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 4
          i32.const 65536
          i32.ge_s
          br_if 0 (;@3;)
          local.get 4
          local.set 6
          br 1 (;@2;)
        end
        local.get 7
        i32.const 144
        i32.add
        local.get 1
        i32.const 67128
        local.get 2
        local.get 3
        i32.const 2
        i32.const 1
        call $runtime.sliceAppend
        local.get 7
        i32.const 424
        i32.add
        local.get 7
        i32.load offset=144
        local.tee 1
        i32.store
        local.get 7
        i32.const 432
        i32.add
        local.get 7
        i32.const 288
        i32.add
        i32.store
        i32.const 28
        local.set 5
        local.get 7
        i32.load offset=152
        local.set 2
        local.get 7
        i32.load offset=148
        local.set 3
        local.get 7
        i32.const 428
        i32.add
        local.set 6
        local.get 7
        i32.const 436
        i32.add
        local.set 9
        loop  ;; label = @3
          local.get 6
          local.get 1
          i32.store
          local.get 5
          i32.const 0
          i32.lt_s
          br_if 2 (;@1;)
          local.get 7
          i32.const 0
          i32.store offset=288
          local.get 7
          local.get 4
          local.get 5
          i32.const 31
          local.get 5
          i32.const 31
          i32.lt_u
          select
          i32.shr_s
          i32.const 15
          i32.and
          i32.const 67132
          i32.add
          i32.load8_u
          i32.store8 offset=288
          local.get 7
          i32.const 128
          i32.add
          local.get 1
          local.get 7
          i32.const 288
          i32.add
          local.get 3
          local.get 2
          i32.const 1
          i32.const 1
          call $runtime.sliceAppend
          local.get 9
          local.get 7
          i32.load offset=128
          local.tee 1
          i32.store
          local.get 5
          i32.const -4
          i32.add
          local.set 5
          local.get 7
          i32.load offset=136
          local.set 2
          local.get 7
          i32.load offset=132
          local.set 3
          br 0 (;@3;)
        end
      end
      local.get 7
      i32.const 112
      i32.add
      local.get 1
      i32.const 67126
      local.get 2
      local.get 3
      i32.const 2
      i32.const 1
      call $runtime.sliceAppend
      local.get 7
      i32.const 408
      i32.add
      local.get 7
      i32.load offset=112
      local.tee 1
      i32.store
      local.get 7
      i32.const 416
      i32.add
      local.get 7
      i32.const 292
      i32.add
      i32.store
      i32.const 12
      local.set 4
      local.get 7
      i32.load offset=120
      local.set 2
      local.get 7
      i32.load offset=116
      local.set 3
      local.get 7
      i32.const 412
      i32.add
      local.set 5
      local.get 7
      i32.const 420
      i32.add
      local.set 9
      loop  ;; label = @2
        local.get 5
        local.get 1
        i32.store
        local.get 4
        i32.const 0
        i32.lt_s
        br_if 1 (;@1;)
        local.get 7
        i32.const 0
        i32.store offset=292
        local.get 7
        local.get 6
        local.get 4
        i32.const 31
        local.get 4
        i32.const 31
        i32.lt_u
        select
        i32.shr_s
        i32.const 15
        i32.and
        i32.const 67132
        i32.add
        i32.load8_u
        i32.store8 offset=292
        local.get 7
        i32.const 96
        i32.add
        local.get 1
        local.get 7
        i32.const 292
        i32.add
        local.get 3
        local.get 2
        i32.const 1
        i32.const 1
        call $runtime.sliceAppend
        local.get 9
        local.get 7
        i32.load offset=96
        local.tee 1
        i32.store
        local.get 4
        i32.const -4
        i32.add
        local.set 4
        local.get 7
        i32.load offset=104
        local.set 2
        local.get 7
        i32.load offset=100
        local.set 3
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.get 8
    i32.store offset=83624
    local.get 7
    i32.const 360
    i32.add
    local.get 1
    i32.store
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 7
    i32.const 448
    i32.add
    global.set 0)
  (func $strconv.appendQuotedRuneWith (type 7) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i32.const 0
    i32.store offset=60
    local.get 4
    i64.const 0
    i64.store offset=84 align=4
    local.get 4
    i64.const 0
    i64.store offset=76 align=4
    local.get 4
    i32.const 5
    i32.store offset=68
    i32.const 0
    i32.load offset=83624
    local.set 5
    i32.const 0
    local.get 4
    i32.const 64
    i32.add
    i32.store offset=83624
    local.get 4
    local.get 5
    i32.store offset=64
    local.get 4
    i32.const 39
    i32.store8 offset=60
    local.get 4
    local.get 4
    i32.const 60
    i32.add
    i32.store offset=72
    local.get 4
    i32.const 40
    i32.add
    local.get 1
    local.get 4
    i32.const 60
    i32.add
    i32.const 0
    i32.const 68
    i32.const 1
    i32.const 1
    call $runtime.sliceAppend
    local.get 4
    local.get 4
    i32.load offset=40
    local.tee 1
    i32.store offset=76
    local.get 4
    i32.const 24
    i32.add
    local.get 1
    local.get 4
    i32.load offset=44
    local.get 4
    i32.load offset=48
    i32.const 65533
    local.get 2
    local.get 2
    i32.const -2048
    i32.and
    i32.const 55296
    i32.eq
    select
    i32.const 39
    local.get 3
    call $strconv.appendEscapedRune
    local.get 4
    i32.const 0
    i32.store offset=56
    local.get 4
    local.get 4
    i32.load offset=24
    local.tee 2
    i32.store offset=80
    local.get 4
    i32.const 39
    i32.store8 offset=56
    local.get 4
    local.get 4
    i32.const 56
    i32.add
    i32.store offset=84
    local.get 4
    i32.const 8
    i32.add
    local.get 2
    local.get 4
    i32.const 56
    i32.add
    local.get 4
    i32.load offset=28
    local.get 4
    i32.load offset=32
    i32.const 1
    i32.const 1
    call $runtime.sliceAppend
    i32.const 0
    local.get 5
    i32.store offset=83624
    local.get 4
    local.get 4
    i32.load offset=8
    local.tee 2
    i32.store offset=88
    local.get 0
    local.get 4
    i32.load offset=16
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 4
    i32.load offset=12
    i32.store offset=4
    local.get 4
    i32.const 96
    i32.add
    global.set 0)
  (func $strconv.IsPrint (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 255
          i32.gt_s
          br_if 0 (;@3;)
          i32.const 1
          local.set 1
          local.get 0
          i32.const -32
          i32.add
          i32.const 94
          i32.le_u
          br_if 1 (;@2;)
          i32.const 0
          local.set 1
          local.get 0
          i32.const 161
          i32.lt_s
          br_if 1 (;@2;)
          local.get 0
          i32.const 173
          i32.ne
          return
        end
        block  ;; label = @3
          local.get 0
          i32.const 65535
          i32.gt_s
          br_if 0 (;@3;)
          i32.const 0
          local.set 1
          i32.const 79464
          i32.const 442
          local.get 0
          call $strconv.bsearch16
          local.tee 2
          i32.const 441
          i32.gt_s
          br_if 1 (;@2;)
          local.get 2
          i32.const -2
          i32.and
          local.tee 3
          i32.const 441
          i32.gt_u
          br_if 2 (;@1;)
          local.get 3
          i32.const 1
          i32.shl
          i32.const 79464
          i32.add
          i32.load16_u
          local.get 0
          i32.const 65535
          i32.and
          i32.gt_u
          br_if 1 (;@2;)
          local.get 2
          i32.const 1
          i32.or
          local.tee 2
          i32.const 441
          i32.gt_u
          br_if 2 (;@1;)
          local.get 2
          i32.const 1
          i32.shl
          i32.const 79464
          i32.add
          i32.load16_u
          local.get 0
          i32.const 65535
          i32.and
          i32.lt_u
          br_if 1 (;@2;)
          i32.const 1
          local.set 1
          i32.const 80348
          i32.const 132
          local.get 0
          call $strconv.bsearch16
          local.tee 2
          i32.const 131
          i32.gt_s
          br_if 1 (;@2;)
          local.get 2
          i32.const 1
          i32.shl
          i32.const 80348
          i32.add
          i32.load16_u
          local.get 0
          i32.const 65535
          i32.and
          i32.ne
          return
        end
        i32.const 0
        local.set 2
        i32.const 450
        local.set 1
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            local.get 2
            i32.le_s
            br_if 1 (;@3;)
            local.get 1
            local.get 2
            i32.sub
            i32.const 2
            i32.div_s
            local.get 2
            i32.add
            local.tee 3
            i32.const 450
            i32.ge_u
            br_if 3 (;@1;)
            local.get 3
            i32.const 1
            i32.add
            local.get 2
            local.get 3
            i32.const 2
            i32.shl
            i32.const 80612
            i32.add
            i32.load
            local.get 0
            i32.lt_u
            local.tee 4
            select
            local.set 2
            local.get 1
            local.get 3
            local.get 4
            select
            local.set 1
            br 0 (;@4;)
          end
        end
        i32.const 0
        local.set 1
        local.get 2
        i32.const 449
        i32.gt_s
        br_if 0 (;@2;)
        local.get 2
        i32.const -2
        i32.and
        local.tee 3
        i32.const 449
        i32.gt_u
        br_if 1 (;@1;)
        local.get 3
        i32.const 2
        i32.shl
        i32.const 80612
        i32.add
        i32.load
        local.get 0
        i32.gt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 1
        i32.or
        local.tee 2
        i32.const 449
        i32.gt_u
        br_if 1 (;@1;)
        local.get 2
        i32.const 2
        i32.shl
        i32.const 80612
        i32.add
        i32.load
        local.get 0
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 1
        local.set 1
        local.get 0
        i32.const 131071
        i32.gt_s
        br_if 0 (;@2;)
        i32.const 82412
        i32.const 90
        local.get 0
        call $strconv.bsearch16
        local.tee 2
        i32.const 89
        i32.gt_s
        br_if 0 (;@2;)
        local.get 2
        i32.const 1
        i32.shl
        i32.const 82412
        i32.add
        i32.load16_u
        local.get 0
        i32.const 65535
        i32.and
        i32.ne
        local.set 1
      end
      local.get 1
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $strconv.bsearch16 (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    i32.const 0
    local.set 3
    local.get 2
    i32.const 65535
    i32.and
    local.set 4
    local.get 1
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 2
          local.get 3
          i32.le_s
          br_if 1 (;@2;)
          local.get 2
          local.get 3
          i32.sub
          i32.const 2
          i32.div_s
          local.get 3
          i32.add
          local.tee 5
          local.get 1
          i32.ge_u
          br_if 2 (;@1;)
          local.get 2
          local.get 5
          local.get 0
          local.get 5
          i32.const 1
          i32.shl
          i32.add
          i32.load16_u
          local.get 4
          i32.lt_u
          local.tee 6
          select
          local.set 2
          local.get 5
          i32.const 1
          i32.add
          local.get 3
          local.get 6
          select
          local.set 3
          br 0 (;@3;)
        end
      end
      local.get 3
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $_*strconv.decimal_.Assign (type 22) (param i32 i64)
    (local i32 i32 i64 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store offset=8
    i32.const 0
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i64.eqz
            br_if 1 (;@3;)
            local.get 1
            i64.const 10
            i64.div_u
            local.set 4
            local.get 3
            i32.const 24
            i32.eq
            br_if 2 (;@2;)
            local.get 2
            i32.const 8
            i32.add
            local.get 3
            i32.add
            local.get 4
            i64.const -10
            i64.mul
            local.get 1
            i64.add
            i32.wrap_i64
            i32.const 48
            i32.add
            i32.store8
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 4
            local.set 1
            br 0 (;@4;)
          end
        end
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.const 8
        i32.add
        i32.const -1
        i32.add
        local.set 5
        i32.const 0
        local.set 6
        block  ;; label = @3
          loop  ;; label = @4
            local.get 0
            local.get 6
            i32.store offset=800
            local.get 3
            i32.const 0
            i32.le_s
            br_if 1 (;@3;)
            local.get 6
            i32.const 800
            i32.ge_u
            br_if 2 (;@2;)
            local.get 0
            local.get 6
            i32.add
            local.get 5
            local.get 3
            i32.add
            i32.load8_u
            i32.store8
            local.get 0
            i32.load offset=800
            i32.const 1
            i32.add
            local.set 6
            local.get 3
            i32.const -1
            i32.add
            local.set 3
            br 0 (;@4;)
          end
        end
        local.get 0
        local.get 6
        i32.store offset=804
        local.get 0
        call $strconv.trim
        local.get 2
        i32.const 32
        i32.add
        global.set 0
        return
      end
      call $runtime.lookupPanic
      unreachable
    end
    call $runtime.nilPanic
    unreachable)
  (func $_*strconv.decimal_.Shift (type 4) (param i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=800
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.const 29
            i32.lt_s
            br_if 1 (;@3;)
            local.get 0
            i32.const 28
            call $strconv.leftShift
            local.get 1
            i32.const -28
            i32.add
            local.set 1
            br 0 (;@4;)
          end
        end
        local.get 0
        local.get 1
        call $strconv.leftShift
        return
      end
      local.get 1
      i32.const -1
      i32.gt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.const -29
          i32.gt_s
          br_if 1 (;@2;)
          local.get 0
          i32.const 28
          call $strconv.rightShift
          local.get 1
          i32.const 28
          i32.add
          local.set 1
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 0
      local.get 1
      i32.sub
      call $strconv.rightShift
      return
    end)
  (func $_*strconv.decimal_.Round (type 4) (param i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          br_if 0 (;@3;)
          call $runtime.nilPanic
          unreachable
        end
        local.get 0
        i32.load offset=800
        local.tee 2
        local.get 1
        i32.gt_s
        br_if 1 (;@1;)
      end
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 800
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.add
        local.tee 3
        i32.load8_u
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 1
            i32.add
            local.get 2
            i32.ne
            br_if 0 (;@4;)
            local.get 4
            i32.const 255
            i32.and
            i32.const 53
            i32.ne
            br_if 0 (;@4;)
            local.get 0
            i32.load8_u offset=809
            br_if 3 (;@1;)
            local.get 1
            i32.const 0
            i32.le_s
            br_if 1 (;@3;)
            local.get 3
            i32.const -1
            i32.add
            i32.load8_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 4
          i32.const 255
          i32.and
          i32.const 52
          i32.gt_u
          br_if 2 (;@1;)
        end
        local.get 0
        local.get 1
        call $_*strconv.decimal_.RoundDown
        return
      end
      call $runtime.lookupPanic
      unreachable
    end
    local.get 0
    local.get 1
    call $_*strconv.decimal_.RoundUp)
  (func $_*strconv.decimal_.RoundUp (type 4) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const -1
          i32.le_s
          br_if 0 (;@3;)
          local.get 0
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=800
          local.get 1
          i32.le_s
          br_if 0 (;@3;)
          block  ;; label = @4
            loop  ;; label = @5
              local.get 1
              i32.const 0
              i32.le_s
              br_if 1 (;@4;)
              local.get 1
              i32.const -1
              i32.add
              local.tee 2
              i32.const 800
              i32.ge_u
              br_if 4 (;@1;)
              local.get 0
              local.get 1
              i32.add
              local.set 3
              local.get 2
              local.set 1
              local.get 3
              i32.const -1
              i32.add
              i32.load8_u
              local.tee 3
              i32.const 56
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 0
            local.get 2
            i32.add
            local.get 3
            i32.const 1
            i32.add
            i32.store8
            local.get 0
            local.get 2
            i32.const 1
            i32.add
            i32.store offset=800
            return
          end
          local.get 0
          i32.const 1
          i32.store offset=800
          local.get 0
          i32.const 49
          i32.store8
          local.get 0
          local.get 0
          i32.load offset=804
          i32.const 1
          i32.add
          i32.store offset=804
        end
        return
      end
      call $runtime.nilPanic
      unreachable
    end
    call $runtime.lookupPanic
    unreachable)
  (func $_*strconv.decimal_.RoundDown (type 4) (param i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const -1
          i32.le_s
          br_if 0 (;@3;)
          local.get 0
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=800
          local.get 1
          i32.gt_s
          br_if 2 (;@1;)
        end
        return
      end
      call $runtime.nilPanic
      unreachable
    end
    local.get 0
    local.get 1
    i32.store offset=800
    local.get 0
    call $strconv.trim)
  (func $strconv.trim (type 2) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const -1
        i32.add
        local.set 1
        local.get 0
        i32.load offset=800
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 2
              i32.const 0
              i32.le_s
              br_if 1 (;@4;)
              local.get 2
              i32.const -1
              i32.add
              local.tee 3
              i32.const 800
              i32.ge_u
              br_if 4 (;@1;)
              local.get 1
              local.get 2
              i32.add
              i32.load8_u
              i32.const 48
              i32.ne
              br_if 2 (;@3;)
              local.get 0
              local.get 3
              i32.store offset=800
              local.get 3
              local.set 2
              br 0 (;@5;)
            end
          end
          local.get 2
          br_if 0 (;@3;)
          local.get 0
          i32.const 0
          i32.store offset=804
        end
        return
      end
      call $runtime.nilPanic
      unreachable
    end
    call $runtime.lookupPanic
    unreachable)
  (func $strconv.leftShift (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=800
          local.tee 2
          i32.const 801
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 12
          i32.mul
          i32.const 82708
          i32.add
          i32.load
          local.set 3
          i32.const 0
          local.set 4
          local.get 1
          i32.const 12
          i32.mul
          local.tee 5
          i32.const 82716
          i32.add
          i32.load
          local.tee 6
          i32.const 0
          local.get 6
          i32.const 0
          i32.gt_s
          select
          local.set 7
          local.get 5
          i32.const 82712
          i32.add
          i32.load
          local.set 8
          i32.const 0
          local.set 5
          block  ;; label = @4
            loop  ;; label = @5
              local.get 7
              local.get 5
              i32.eq
              br_if 1 (;@4;)
              block  ;; label = @6
                local.get 2
                local.get 5
                i32.ne
                br_if 0 (;@6;)
                i32.const -1
                local.set 4
                br 2 (;@4;)
              end
              local.get 6
              local.get 5
              i32.eq
              br_if 4 (;@1;)
              local.get 0
              local.get 5
              i32.add
              local.set 9
              local.get 8
              local.get 5
              i32.add
              local.set 10
              local.get 5
              i32.const 1
              i32.add
              local.set 5
              local.get 9
              i32.load8_u
              local.tee 9
              i32.const 255
              i32.and
              local.get 10
              i32.load8_u
              local.tee 10
              i32.eq
              br_if 0 (;@5;)
            end
            i32.const -1
            i32.const 0
            local.get 9
            i32.const 255
            i32.and
            local.get 10
            i32.lt_u
            select
            local.set 4
          end
          local.get 0
          i32.load offset=800
          local.tee 5
          i32.const -1
          i32.add
          local.set 10
          local.get 4
          local.get 3
          i32.add
          local.tee 7
          local.get 5
          i32.add
          i32.const -1
          i32.add
          local.set 5
          i32.const 0
          local.set 9
          br 1 (;@2;)
        end
        call $runtime.slicePanic
        unreachable
      end
      loop  ;; label = @2
        block  ;; label = @3
          local.get 10
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 9
                i32.eqz
                br_if 0 (;@6;)
                local.get 9
                i32.const 10
                i32.div_u
                local.tee 10
                i32.const -10
                i32.mul
                local.get 9
                i32.add
                local.set 9
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    i32.const 800
                    i32.lt_s
                    br_if 0 (;@8;)
                    local.get 9
                    br_if 1 (;@7;)
                    br 3 (;@5;)
                  end
                  local.get 5
                  i32.const 800
                  i32.ge_u
                  br_if 6 (;@1;)
                  local.get 0
                  local.get 5
                  i32.add
                  local.get 9
                  i32.const 48
                  i32.add
                  i32.store8
                  br 2 (;@5;)
                end
                local.get 0
                i32.const 1
                i32.store8 offset=809
                br 1 (;@5;)
              end
              local.get 0
              local.get 0
              i32.load offset=804
              local.get 7
              i32.add
              i32.store offset=804
              local.get 0
              local.get 0
              i32.load offset=800
              local.get 7
              i32.add
              local.tee 5
              i32.const 800
              local.get 5
              i32.const 800
              i32.lt_s
              select
              i32.store offset=800
              local.get 0
              call $strconv.trim
              return
            end
            local.get 5
            i32.const -1
            i32.add
            local.set 5
            local.get 10
            local.set 9
            br 0 (;@4;)
          end
        end
        local.get 10
        i32.const 800
        i32.ge_u
        br_if 1 (;@1;)
        local.get 0
        local.get 10
        i32.add
        i32.load8_u
        i32.const -48
        i32.add
        local.get 1
        i32.shl
        local.get 9
        i32.add
        local.tee 9
        local.get 9
        i32.const 10
        i32.div_u
        local.tee 9
        i32.const -10
        i32.mul
        i32.add
        local.set 6
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.const 799
            i32.gt_s
            br_if 0 (;@4;)
            local.get 5
            i32.const 800
            i32.ge_u
            br_if 3 (;@1;)
            local.get 0
            local.get 5
            i32.add
            local.get 6
            i32.const 48
            i32.add
            i32.store8
            br 1 (;@3;)
          end
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 1
          i32.store8 offset=809
        end
        local.get 10
        i32.const -1
        i32.add
        local.set 10
        local.get 5
        i32.const -1
        i32.add
        local.set 5
        br 0 (;@2;)
      end
    end
    call $runtime.lookupPanic
    unreachable)
  (func $strconv.rightShift (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    local.set 2
    i32.const 0
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 3
              local.get 1
              i32.shr_u
              br_if 1 (;@4;)
              local.get 0
              i32.eqz
              br_if 2 (;@3;)
              block  ;; label = @6
                local.get 2
                local.get 0
                i32.load offset=800
                i32.lt_s
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 3
                  i32.eqz
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    local.get 3
                    local.get 1
                    i32.shr_u
                    br_if 4 (;@4;)
                    local.get 2
                    i32.const 1
                    i32.add
                    local.set 2
                    local.get 3
                    i32.const 10
                    i32.mul
                    local.set 3
                    br 0 (;@8;)
                  end
                end
                local.get 0
                i32.const 0
                i32.store offset=800
                return
              end
              local.get 2
              i32.const 800
              i32.eq
              br_if 4 (;@1;)
              local.get 3
              i32.const 10
              i32.mul
              local.get 0
              local.get 2
              i32.add
              i32.load8_u
              i32.add
              i32.const -48
              i32.add
              local.set 3
              local.get 2
              i32.const 1
              i32.add
              local.set 2
              br 0 (;@5;)
            end
          end
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 0
          i32.load offset=804
          local.get 2
          i32.sub
          i32.const 1
          i32.add
          i32.store offset=804
          i32.const 0
          local.set 4
          i32.const 0
          i32.const 800
          local.get 2
          i32.sub
          local.tee 5
          local.get 5
          i32.const 800
          i32.gt_u
          select
          local.set 6
          local.get 0
          local.get 2
          i32.add
          local.set 7
          i32.const -1
          local.get 1
          i32.shl
          i32.const -1
          i32.xor
          local.set 5
          br 1 (;@2;)
        end
        call $runtime.nilPanic
        unreachable
      end
      loop  ;; label = @2
        block  ;; label = @3
          local.get 2
          local.get 4
          i32.add
          local.get 0
          i32.load offset=800
          i32.lt_s
          br_if 0 (;@3;)
          block  ;; label = @4
            loop  ;; label = @5
              local.get 3
              i32.eqz
              br_if 1 (;@4;)
              local.get 3
              local.get 1
              i32.shr_u
              local.set 2
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  i32.const 800
                  i32.lt_s
                  br_if 0 (;@7;)
                  local.get 2
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 0
                  i32.const 1
                  i32.store8 offset=809
                  br 1 (;@6;)
                end
                local.get 4
                i32.const 800
                i32.ge_u
                br_if 5 (;@1;)
                local.get 0
                local.get 4
                i32.add
                local.get 2
                i32.const 48
                i32.add
                i32.store8
                local.get 4
                i32.const 1
                i32.add
                local.set 4
              end
              local.get 3
              local.get 5
              i32.and
              i32.const 10
              i32.mul
              local.set 3
              br 0 (;@5;)
            end
          end
          local.get 0
          local.get 4
          i32.store offset=800
          local.get 0
          call $strconv.trim
          return
        end
        local.get 6
        local.get 4
        i32.eq
        br_if 1 (;@1;)
        local.get 4
        i32.const 800
        i32.eq
        br_if 1 (;@1;)
        local.get 7
        local.get 4
        i32.add
        i32.load8_u
        local.set 8
        local.get 0
        local.get 4
        i32.add
        local.get 3
        local.get 1
        i32.shr_u
        i32.const 48
        i32.add
        i32.store8
        local.get 8
        local.get 3
        local.get 5
        i32.and
        i32.const 10
        i32.mul
        i32.add
        i32.const -48
        i32.add
        local.set 3
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 0 (;@2;)
      end
    end
    call $runtime.lookupPanic
    unreachable)
  (func $strconv.fmtE (type 23) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 336
    i32.sub
    local.tee 11
    global.set 0
    local.get 11
    i32.const 181
    i32.add
    i64.const 0
    i64.store align=1
    local.get 11
    i64.const 0
    i64.store offset=320
    local.get 11
    i64.const 0
    i64.store offset=176
    local.get 11
    i64.const 0
    i64.store offset=168
    local.get 11
    i64.const 0
    i64.store offset=328
    local.get 11
    i64.const 103079215104
    i64.store offset=232
    local.get 11
    i64.const 0
    i64.store offset=240
    local.get 11
    i64.const 0
    i64.store offset=312
    local.get 11
    i64.const 0
    i64.store offset=304
    local.get 11
    i64.const 0
    i64.store offset=296
    local.get 11
    i64.const 0
    i64.store offset=288
    local.get 11
    i64.const 0
    i64.store offset=280
    local.get 11
    i64.const 0
    i64.store offset=272
    local.get 11
    i64.const 0
    i64.store offset=264
    local.get 11
    i64.const 0
    i64.store offset=256
    local.get 11
    i64.const 0
    i64.store offset=248
    i32.const 0
    i32.load offset=83624
    local.set 12
    i32.const 0
    local.get 11
    i32.const 232
    i32.add
    i32.store offset=83624
    local.get 11
    local.get 3
    i32.store offset=324
    i32.const 1
    local.set 13
    local.get 11
    local.get 8
    i32.const 1
    i32.and
    i32.store8 offset=188
    local.get 11
    local.get 7
    i32.store offset=184
    local.get 11
    local.get 6
    i32.store offset=180
    local.get 11
    local.get 5
    i32.store offset=176
    local.get 11
    local.get 3
    i32.store offset=168
    local.get 11
    local.get 4
    i32.store offset=172
    local.get 11
    local.get 3
    i32.store offset=328
    local.get 11
    local.get 12
    i32.store offset=232
    local.get 11
    local.get 11
    i32.const 168
    i32.add
    i32.store offset=240
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        i32.const 68
        local.set 2
        br 1 (;@1;)
      end
      local.get 11
      i32.const 0
      i32.store offset=228
      local.get 11
      i32.const 244
      i32.add
      local.get 11
      i32.const 228
      i32.add
      i32.store
      local.get 11
      i32.const 45
      i32.store8 offset=228
      local.get 11
      i32.const 152
      i32.add
      local.get 1
      local.get 11
      i32.const 228
      i32.add
      i32.const 1
      i32.const 68
      i32.const 1
      i32.const 1
      call $runtime.sliceAppend
      local.get 11
      i32.const 248
      i32.add
      local.get 11
      i32.load offset=152
      local.tee 1
      i32.store
      local.get 11
      i32.load offset=160
      local.set 2
      local.get 11
      i32.load offset=156
      local.set 13
    end
    local.get 11
    i32.const 252
    i32.add
    local.get 1
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        br_if 0 (;@2;)
        i32.const 48
        local.set 4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load8_u
        local.set 4
        br 1 (;@1;)
      end
      call $runtime.lookupPanic
      unreachable
    end
    local.get 11
    i32.const 0
    i32.store offset=224
    local.get 11
    i32.const 256
    i32.add
    local.get 11
    i32.const 224
    i32.add
    i32.store
    local.get 11
    local.get 4
    i32.store8 offset=224
    local.get 11
    i32.const 136
    i32.add
    local.get 1
    local.get 11
    i32.const 224
    i32.add
    local.get 13
    local.get 2
    i32.const 1
    i32.const 1
    call $runtime.sliceAppend
    local.get 11
    i32.const 260
    i32.add
    local.get 11
    i32.load offset=136
    local.tee 1
    i32.store
    local.get 11
    i32.load offset=144
    local.set 13
    local.get 11
    i32.load offset=140
    local.set 2
    block  ;; label = @1
      local.get 9
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 11
      i32.const 0
      i32.store offset=220
      local.get 11
      i32.const 264
      i32.add
      local.get 11
      i32.const 220
      i32.add
      i32.store
      local.get 11
      i32.const 46
      i32.store8 offset=220
      local.get 11
      i32.const 120
      i32.add
      local.get 1
      local.get 11
      i32.const 220
      i32.add
      local.get 2
      local.get 13
      i32.const 1
      i32.const 1
      call $runtime.sliceAppend
      local.get 11
      i32.const 268
      i32.add
      local.get 11
      i32.load offset=120
      local.tee 1
      i32.store
      local.get 11
      i32.load offset=128
      local.set 13
      local.get 11
      i32.load offset=124
      local.set 2
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          local.get 9
          i32.const 1
          i32.add
          local.tee 4
          local.get 6
          local.get 4
          i32.lt_s
          select
          local.tee 4
          i32.const 1
          i32.gt_s
          br_if 0 (;@3;)
          i32.const 1
          local.set 4
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 4
          local.get 5
          i32.gt_u
          br_if 0 (;@3;)
          local.get 11
          i32.const 104
          i32.add
          local.get 1
          local.get 3
          i32.const 1
          i32.add
          local.get 2
          local.get 13
          local.get 4
          i32.const -1
          i32.add
          i32.const 1
          call $runtime.sliceAppend
          local.get 11
          i32.const 332
          i32.add
          local.get 11
          i32.load offset=104
          local.tee 1
          i32.store
          local.get 11
          i32.load offset=112
          local.set 13
          local.get 11
          i32.load offset=108
          local.set 2
          br 1 (;@2;)
        end
        call $runtime.slicePanic
        unreachable
      end
      local.get 11
      i32.const 276
      i32.add
      local.get 11
      i32.const 216
      i32.add
      i32.store
      local.get 11
      i32.const 272
      i32.add
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.store
        local.get 4
        local.get 9
        i32.gt_s
        br_if 1 (;@1;)
        local.get 11
        i32.const 0
        i32.store offset=216
        local.get 11
        i32.const 48
        i32.store8 offset=216
        local.get 11
        i32.const 88
        i32.add
        local.get 1
        local.get 11
        i32.const 216
        i32.add
        local.get 2
        local.get 13
        i32.const 1
        i32.const 1
        call $runtime.sliceAppend
        local.get 11
        i32.const 232
        i32.add
        i32.const 48
        i32.add
        local.get 11
        i32.load offset=88
        local.tee 1
        i32.store
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        local.get 11
        i32.load offset=96
        local.set 13
        local.get 11
        i32.load offset=92
        local.set 2
        br 0 (;@2;)
      end
    end
    local.get 11
    i32.const 284
    i32.add
    local.get 1
    i32.store
    local.get 11
    i32.const 0
    i32.store offset=212
    local.get 11
    local.get 10
    i32.store8 offset=212
    local.get 11
    i32.const 288
    i32.add
    local.get 11
    i32.const 212
    i32.add
    i32.store
    local.get 11
    i32.const 72
    i32.add
    local.get 1
    local.get 11
    i32.const 212
    i32.add
    local.get 2
    local.get 13
    i32.const 1
    i32.const 1
    call $runtime.sliceAppend
    local.get 11
    i32.const 292
    i32.add
    local.get 11
    i32.load offset=72
    local.tee 4
    i32.store
    local.get 11
    i32.const 0
    i32.store offset=208
    local.get 11
    i32.const 296
    i32.add
    local.get 11
    i32.const 208
    i32.add
    i32.store
    local.get 11
    i32.const 45
    i32.const 43
    local.get 7
    i32.const -1
    i32.add
    i32.const 0
    local.get 6
    select
    local.tee 1
    i32.const 0
    i32.lt_s
    select
    i32.store8 offset=208
    local.get 11
    i32.const 56
    i32.add
    local.get 4
    local.get 11
    i32.const 208
    i32.add
    local.get 11
    i32.load offset=76
    local.get 11
    i32.load offset=80
    i32.const 1
    i32.const 1
    call $runtime.sliceAppend
    local.get 11
    i32.const 300
    i32.add
    local.get 11
    i32.load offset=56
    local.tee 4
    i32.store
    local.get 11
    i32.load offset=64
    local.set 13
    local.get 11
    i32.load offset=60
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 1
        i32.const 31
        i32.shr_s
        local.tee 9
        i32.add
        local.get 9
        i32.xor
        local.tee 1
        i32.const 9
        i32.gt_s
        br_if 0 (;@2;)
        local.get 11
        i32.const 0
        i32.store offset=204
        local.get 11
        i32.const 304
        i32.add
        local.get 11
        i32.const 204
        i32.add
        i32.store
        local.get 11
        i32.const 48
        i32.store8 offset=204
        local.get 11
        local.get 1
        i32.const 48
        i32.add
        i32.store8 offset=205
        local.get 11
        i32.const 8
        i32.add
        local.get 4
        local.get 11
        i32.const 204
        i32.add
        local.get 2
        local.get 13
        i32.const 2
        i32.const 1
        call $runtime.sliceAppend
        local.get 11
        i32.load offset=16
        local.set 4
        local.get 11
        i32.load offset=12
        local.set 13
        local.get 11
        i32.load offset=8
        local.set 1
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.const 99
        i32.gt_s
        br_if 0 (;@2;)
        local.get 11
        i32.const 0
        i32.store offset=200
        local.get 11
        i32.const 316
        i32.add
        local.get 11
        i32.const 200
        i32.add
        i32.store
        local.get 11
        local.get 1
        i32.const 255
        i32.and
        i32.const 10
        i32.div_u
        local.tee 9
        i32.const 48
        i32.add
        i32.store8 offset=200
        local.get 11
        local.get 1
        local.get 9
        i32.const 10
        i32.mul
        i32.sub
        i32.const 48
        i32.or
        i32.store8 offset=201
        local.get 11
        i32.const 24
        i32.add
        local.get 4
        local.get 11
        i32.const 200
        i32.add
        local.get 2
        local.get 13
        i32.const 2
        i32.const 1
        call $runtime.sliceAppend
        local.get 11
        i32.load offset=32
        local.set 4
        local.get 11
        i32.load offset=28
        local.set 13
        local.get 11
        i32.load offset=24
        local.set 1
        br 1 (;@1;)
      end
      local.get 11
      i32.const 0
      i32.store offset=196
      local.get 11
      i32.const 320
      i32.add
      local.get 11
      i32.const 196
      i32.add
      i32.store
      local.get 11
      local.get 1
      i32.const 100
      i32.div_u
      i32.const 48
      i32.add
      i32.store8 offset=196
      local.get 11
      local.get 1
      local.get 1
      i32.const 10
      i32.div_u
      local.tee 9
      i32.const 10
      i32.mul
      i32.sub
      i32.const 48
      i32.or
      i32.store8 offset=198
      local.get 11
      local.get 9
      i32.const 255
      i32.and
      i32.const 10
      i32.rem_u
      i32.const 48
      i32.or
      i32.store8 offset=197
      local.get 11
      i32.const 40
      i32.add
      local.get 4
      local.get 11
      i32.const 196
      i32.add
      local.get 2
      local.get 13
      i32.const 3
      i32.const 1
      call $runtime.sliceAppend
      local.get 11
      i32.load offset=48
      local.set 4
      local.get 11
      i32.load offset=44
      local.set 13
      local.get 11
      i32.load offset=40
      local.set 1
    end
    i32.const 0
    local.get 12
    i32.store offset=83624
    local.get 11
    i32.const 308
    i32.add
    local.get 1
    i32.store
    local.get 11
    i32.const 312
    i32.add
    local.get 1
    i32.store
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    local.get 13
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 11
    i32.const 336
    i32.add
    global.set 0)
  (func $strconv.fmtF (type 24) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 240
    i32.sub
    local.tee 10
    global.set 0
    local.get 10
    i32.const 117
    i32.add
    i64.const 0
    i64.store align=1
    local.get 10
    i64.const 0
    i64.store offset=224
    local.get 10
    i64.const 0
    i64.store offset=112
    local.get 10
    i64.const 0
    i64.store offset=104
    local.get 10
    i64.const 81604378624
    i64.store offset=152
    local.get 10
    i64.const 0
    i64.store offset=160
    local.get 10
    i64.const 0
    i64.store offset=216
    local.get 10
    i64.const 0
    i64.store offset=208
    local.get 10
    i64.const 0
    i64.store offset=200
    local.get 10
    i64.const 0
    i64.store offset=192
    local.get 10
    i64.const 0
    i64.store offset=184
    local.get 10
    i64.const 0
    i64.store offset=176
    local.get 10
    i64.const 0
    i64.store offset=168
    local.get 10
    local.get 3
    i32.store offset=232
    i32.const 0
    i32.load offset=83624
    local.set 11
    i32.const 0
    local.get 10
    i32.const 152
    i32.add
    i32.store offset=83624
    local.get 10
    local.get 3
    i32.store offset=224
    i32.const 1
    local.set 12
    local.get 10
    local.get 8
    i32.const 1
    i32.and
    i32.store8 offset=124
    local.get 10
    local.get 7
    i32.store offset=120
    local.get 10
    local.get 6
    i32.store offset=116
    local.get 10
    local.get 5
    i32.store offset=112
    local.get 10
    local.get 3
    i32.store offset=104
    local.get 10
    local.get 4
    i32.store offset=108
    local.get 10
    local.get 11
    i32.store offset=152
    local.get 10
    local.get 10
    i32.const 104
    i32.add
    i32.store offset=160
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        i32.const 68
        local.set 2
        br 1 (;@1;)
      end
      local.get 10
      i32.const 0
      i32.store offset=148
      local.get 10
      i32.const 164
      i32.add
      local.get 10
      i32.const 148
      i32.add
      i32.store
      local.get 10
      i32.const 45
      i32.store8 offset=148
      local.get 10
      i32.const 88
      i32.add
      local.get 1
      local.get 10
      i32.const 148
      i32.add
      i32.const 1
      i32.const 68
      i32.const 1
      i32.const 1
      call $runtime.sliceAppend
      local.get 10
      i32.const 168
      i32.add
      local.get 10
      i32.load offset=88
      local.tee 1
      i32.store
      local.get 10
      i32.load offset=96
      local.set 2
      local.get 10
      i32.load offset=92
      local.set 12
    end
    local.get 10
    i32.const 172
    i32.add
    local.get 1
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 7
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
        local.get 10
        i32.const 0
        i32.store offset=132
        local.get 10
        i32.const 216
        i32.add
        local.get 10
        i32.const 132
        i32.add
        i32.store
        local.get 10
        i32.const 48
        i32.store8 offset=132
        local.get 10
        i32.const 72
        i32.add
        local.get 1
        local.get 10
        i32.const 132
        i32.add
        local.get 12
        local.get 2
        i32.const 1
        i32.const 1
        call $runtime.sliceAppend
        local.get 10
        i32.const 220
        i32.add
        local.get 10
        i32.load offset=72
        local.tee 1
        i32.store
        local.get 10
        i32.load offset=80
        local.set 5
        local.get 10
        i32.load offset=76
        local.set 12
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          local.get 7
          local.get 6
          local.get 7
          i32.lt_s
          select
          local.tee 8
          local.get 5
          i32.gt_u
          br_if 0 (;@3;)
          local.get 10
          i32.const 56
          i32.add
          local.get 1
          local.get 3
          local.get 12
          local.get 2
          local.get 8
          i32.const 1
          call $runtime.sliceAppend
          local.get 10
          i32.const 228
          i32.add
          local.get 10
          i32.load offset=56
          local.tee 1
          i32.store
          local.get 10
          i32.const 180
          i32.add
          local.get 10
          i32.const 144
          i32.add
          i32.store
          local.get 7
          local.get 8
          i32.sub
          local.set 2
          local.get 10
          i32.load offset=64
          local.set 5
          local.get 10
          i32.load offset=60
          local.set 12
          local.get 10
          i32.const 176
          i32.add
          local.set 8
          local.get 10
          i32.const 184
          i32.add
          local.set 13
          br 1 (;@2;)
        end
        call $runtime.slicePanic
        unreachable
      end
      loop  ;; label = @2
        local.get 8
        local.get 1
        i32.store
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 10
        i32.const 0
        i32.store offset=144
        local.get 10
        i32.const 48
        i32.store8 offset=144
        local.get 10
        i32.const 40
        i32.add
        local.get 1
        local.get 10
        i32.const 144
        i32.add
        local.get 12
        local.get 5
        i32.const 1
        i32.const 1
        call $runtime.sliceAppend
        local.get 13
        local.get 10
        i32.load offset=40
        local.tee 1
        i32.store
        local.get 2
        i32.const -1
        i32.add
        local.set 2
        local.get 10
        i32.load offset=48
        local.set 5
        local.get 10
        i32.load offset=44
        local.set 12
        br 0 (;@2;)
      end
    end
    local.get 10
    i32.const 188
    i32.add
    local.get 1
    i32.store
    block  ;; label = @1
      local.get 9
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 10
      i32.const 0
      i32.store offset=140
      local.get 10
      i32.const 192
      i32.add
      local.get 10
      i32.const 140
      i32.add
      i32.store
      local.get 10
      i32.const 46
      i32.store8 offset=140
      local.get 10
      i32.const 24
      i32.add
      local.get 1
      local.get 10
      i32.const 140
      i32.add
      local.get 12
      local.get 5
      i32.const 1
      i32.const 1
      call $runtime.sliceAppend
      local.get 10
      i32.const 196
      i32.add
      local.get 10
      i32.load offset=24
      local.tee 1
      i32.store
      local.get 10
      i32.const 204
      i32.add
      local.get 10
      i32.const 136
      i32.add
      i32.store
      local.get 10
      i32.load offset=32
      local.set 5
      local.get 10
      i32.load offset=28
      local.set 12
      local.get 10
      i32.const 200
      i32.add
      local.set 8
      local.get 10
      i32.const 208
      i32.add
      local.set 13
      loop  ;; label = @2
        local.get 8
        local.get 1
        i32.store
        local.get 9
        i32.eqz
        br_if 1 (;@1;)
        i32.const 48
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            local.get 7
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            local.get 7
            local.get 6
            i32.ge_s
            br_if 0 (;@4;)
            local.get 7
            local.get 4
            i32.ge_u
            br_if 1 (;@3;)
            local.get 3
            local.get 7
            i32.add
            i32.load8_u
            local.set 2
          end
          local.get 10
          i32.const 0
          i32.store offset=136
          local.get 10
          local.get 2
          i32.store8 offset=136
          local.get 10
          i32.const 8
          i32.add
          local.get 1
          local.get 10
          i32.const 136
          i32.add
          local.get 12
          local.get 5
          i32.const 1
          i32.const 1
          call $runtime.sliceAppend
          local.get 13
          local.get 10
          i32.load offset=8
          local.tee 1
          i32.store
          local.get 7
          i32.const 1
          i32.add
          local.set 7
          local.get 9
          i32.const -1
          i32.add
          local.set 9
          local.get 10
          i32.load offset=16
          local.set 5
          local.get 10
          i32.load offset=12
          local.set 12
          br 1 (;@2;)
        end
      end
      call $runtime.lookupPanic
      unreachable
    end
    i32.const 0
    local.get 11
    i32.store offset=83624
    local.get 10
    i32.const 212
    i32.add
    local.get 1
    i32.store
    local.get 0
    local.get 5
    i32.store offset=8
    local.get 0
    local.get 12
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 10
    i32.const 240
    i32.add
    global.set 0)
  (func $fmt.Errorf (type 21) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 192
    i32.sub
    local.tee 6
    global.set 0
    local.get 6
    i64.const 0
    i64.store offset=180 align=4
    local.get 6
    i64.const 0
    i64.store offset=172 align=4
    local.get 6
    i64.const 0
    i64.store offset=164 align=4
    local.get 6
    i64.const 0
    i64.store offset=156 align=4
    local.get 6
    i64.const 0
    i64.store offset=148 align=4
    local.get 6
    i64.const 0
    i64.store offset=140 align=4
    local.get 6
    i64.const 13
    i64.store offset=132 align=4
    i32.const 0
    i32.load offset=83624
    local.set 7
    i32.const 0
    local.get 6
    i32.const 128
    i32.add
    i32.store offset=83624
    local.get 6
    local.get 7
    i32.store offset=128
    local.get 6
    call $fmt.newPrinter
    local.tee 8
    i32.store offset=136
    block  ;; label = @1
      local.get 8
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 8
    i32.const 0
    i32.store8 offset=124
    local.get 8
    i32.const 1
    i32.store8 offset=128
    local.get 8
    i32.const 32
    i32.add
    local.set 9
    local.get 6
    i32.const 164
    i32.add
    local.set 10
    local.get 6
    i32.const 168
    i32.add
    local.set 11
    i32.const 0
    local.set 12
    i32.const 0
    local.set 13
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 13
                      local.get 2
                      i32.ge_s
                      br_if 0 (;@9;)
                      local.get 8
                      i32.const 1
                      i32.store8 offset=125
                      local.get 13
                      local.get 2
                      local.get 13
                      local.get 2
                      i32.gt_u
                      select
                      local.set 14
                      local.get 13
                      local.set 15
                      block  ;; label = @10
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 2
                            local.get 15
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 2
                            local.set 14
                            br 2 (;@10;)
                          end
                          local.get 14
                          local.get 15
                          i32.eq
                          br_if 8 (;@3;)
                          block  ;; label = @12
                            local.get 1
                            local.get 15
                            i32.add
                            i32.load8_u
                            i32.const 37
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 15
                            i32.const 1
                            i32.add
                            local.set 15
                            br 1 (;@11;)
                          end
                        end
                        local.get 15
                        local.set 14
                      end
                      block  ;; label = @10
                        local.get 14
                        local.get 13
                        i32.le_s
                        br_if 0 (;@10;)
                        local.get 14
                        local.get 13
                        i32.lt_u
                        br_if 2 (;@8;)
                        local.get 14
                        local.get 2
                        i32.gt_u
                        br_if 2 (;@8;)
                        local.get 8
                        local.get 1
                        local.get 13
                        i32.add
                        local.get 14
                        local.get 13
                        i32.sub
                        call $_*fmt.buffer_.writeString
                      end
                      local.get 15
                      local.get 2
                      i32.ge_s
                      br_if 0 (;@9;)
                      local.get 9
                      call $_*fmt.fmt_.clearflags
                      local.get 2
                      local.get 14
                      i32.const 1
                      i32.add
                      local.tee 15
                      local.get 15
                      local.get 2
                      i32.lt_s
                      select
                      local.set 13
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 15
                          local.get 2
                          i32.ge_s
                          br_if 1 (;@10;)
                          local.get 15
                          local.get 2
                          i32.ge_u
                          br_if 8 (;@3;)
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 1
                                        local.get 15
                                        i32.add
                                        i32.load8_u
                                        local.tee 14
                                        i32.const -43
                                        i32.add
                                        br_table 2 (;@16;) 6 (;@12;) 3 (;@15;) 6 (;@12;) 6 (;@12;) 1 (;@17;) 0 (;@18;)
                                      end
                                      block  ;; label = @18
                                        local.get 14
                                        i32.const -32
                                        i32.add
                                        br_table 4 (;@14;) 6 (;@12;) 6 (;@12;) 0 (;@18;) 6 (;@12;)
                                      end
                                      local.get 8
                                      i32.const 1
                                      i32.store8 offset=40
                                      br 4 (;@13;)
                                    end
                                    local.get 8
                                    local.get 8
                                    i32.load8_u offset=38
                                    i32.const -1
                                    i32.xor
                                    i32.const 1
                                    i32.and
                                    i32.store8 offset=42
                                    br 3 (;@13;)
                                  end
                                  local.get 8
                                  i32.const 1
                                  i32.store8 offset=39
                                  br 2 (;@13;)
                                end
                                local.get 8
                                i32.const 0
                                i32.store8 offset=42
                                local.get 8
                                i32.const 1
                                i32.store8 offset=38
                                br 1 (;@13;)
                              end
                              local.get 8
                              i32.const 1
                              i32.store8 offset=41
                            end
                            local.get 15
                            i32.const 1
                            i32.add
                            local.set 15
                            br 1 (;@11;)
                          end
                        end
                        block  ;; label = @11
                          local.get 12
                          local.get 4
                          i32.ge_s
                          br_if 0 (;@11;)
                          local.get 14
                          i32.const -97
                          i32.add
                          i32.const 255
                          i32.and
                          i32.const 25
                          i32.gt_u
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 14
                            i32.const 118
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 8
                            i32.load8_u offset=39
                            local.set 13
                            local.get 8
                            i32.load8_u offset=40
                            local.set 16
                            local.get 8
                            i32.const 0
                            i32.store16 offset=39 align=1
                            local.get 8
                            local.get 16
                            i32.const 1
                            i32.and
                            i32.store8 offset=44
                            local.get 8
                            local.get 13
                            i32.const 1
                            i32.and
                            i32.store8 offset=43
                          end
                          local.get 12
                          local.get 4
                          i32.ge_u
                          br_if 8 (;@3;)
                          local.get 10
                          local.get 3
                          local.get 12
                          i32.const 3
                          i32.shl
                          i32.add
                          local.tee 13
                          i32.load offset=4
                          local.tee 16
                          i32.store
                          local.get 8
                          local.get 13
                          i32.load
                          local.get 16
                          local.get 14
                          call $_*fmt.pp_.printArg
                          local.get 15
                          i32.const 1
                          i32.add
                          local.set 13
                          local.get 12
                          i32.const 1
                          i32.add
                          local.set 12
                          br 7 (;@4;)
                        end
                        local.get 15
                        local.set 13
                      end
                      local.get 6
                      i32.const 112
                      i32.add
                      local.get 8
                      local.get 12
                      local.get 1
                      local.get 2
                      local.get 13
                      local.get 4
                      call $_*fmt.pp_.argNumber
                      local.get 6
                      i32.load8_u offset=120
                      local.set 14
                      local.get 6
                      i32.load offset=112
                      local.set 12
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 6
                            i32.load offset=116
                            local.tee 15
                            local.get 2
                            i32.ge_s
                            br_if 0 (;@12;)
                            local.get 15
                            local.get 2
                            i32.ge_u
                            br_if 9 (;@3;)
                            local.get 1
                            local.get 15
                            i32.add
                            i32.load8_u
                            i32.const 42
                            i32.eq
                            br_if 1 (;@11;)
                          end
                          local.get 6
                          i32.const 96
                          i32.add
                          local.get 1
                          local.get 2
                          local.get 15
                          local.get 2
                          call $fmt.parsenum
                          local.get 6
                          i32.load offset=104
                          local.set 15
                          local.get 6
                          i32.load8_u offset=100
                          local.set 13
                          local.get 8
                          local.get 6
                          i32.load offset=96
                          i32.store offset=48
                          local.get 8
                          local.get 13
                          i32.const 1
                          i32.and
                          i32.store8 offset=36
                          local.get 14
                          local.get 13
                          i32.and
                          i32.const 1
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                          local.get 8
                          i32.const 0
                          i32.store8 offset=125
                          i32.const 1
                          local.set 14
                          br 1 (;@10;)
                        end
                        local.get 6
                        i32.const 80
                        i32.add
                        local.get 3
                        local.get 4
                        local.get 12
                        call $fmt.intFromArg
                        local.get 6
                        i32.load offset=88
                        local.set 12
                        local.get 6
                        i32.load offset=80
                        local.set 13
                        local.get 8
                        local.get 6
                        i32.load8_u offset=84
                        local.tee 14
                        i32.store8 offset=36
                        local.get 8
                        local.get 13
                        i32.store offset=48
                        block  ;; label = @11
                          local.get 14
                          br_if 0 (;@11;)
                          local.get 8
                          i32.const 71705
                          i32.const 12
                          call $_*fmt.buffer_.writeString
                          local.get 8
                          i32.load offset=48
                          local.set 13
                        end
                        local.get 15
                        i32.const 1
                        i32.add
                        local.set 15
                        i32.const 0
                        local.set 14
                        local.get 13
                        i32.const -1
                        i32.gt_s
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 14
                        local.get 8
                        i32.const 0
                        i32.store8 offset=42
                        local.get 8
                        i32.const 1
                        i32.store8 offset=38
                        local.get 8
                        i32.const 0
                        local.get 13
                        i32.sub
                        i32.store offset=48
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 15
                                i32.const 1
                                i32.add
                                local.tee 13
                                local.get 2
                                i32.ge_s
                                br_if 0 (;@14;)
                                local.get 15
                                local.get 2
                                i32.ge_u
                                br_if 11 (;@3;)
                                local.get 1
                                local.get 15
                                i32.add
                                i32.load8_u
                                i32.const 46
                                i32.ne
                                br_if 0 (;@14;)
                                block  ;; label = @15
                                  local.get 14
                                  i32.const 1
                                  i32.and
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 8
                                  i32.const 0
                                  i32.store8 offset=125
                                end
                                local.get 6
                                i32.const 64
                                i32.add
                                local.get 8
                                local.get 12
                                local.get 1
                                local.get 2
                                local.get 13
                                local.get 4
                                call $_*fmt.pp_.argNumber
                                local.get 6
                                i32.load8_u offset=72
                                local.set 14
                                local.get 6
                                i32.load offset=64
                                local.set 12
                                block  ;; label = @15
                                  local.get 6
                                  i32.load offset=68
                                  local.tee 15
                                  local.get 2
                                  i32.ge_s
                                  br_if 0 (;@15;)
                                  local.get 15
                                  local.get 2
                                  i32.ge_u
                                  br_if 12 (;@3;)
                                  local.get 1
                                  local.get 15
                                  i32.add
                                  i32.load8_u
                                  i32.const 42
                                  i32.eq
                                  br_if 2 (;@13;)
                                end
                                local.get 6
                                i32.const 48
                                i32.add
                                local.get 1
                                local.get 2
                                local.get 15
                                local.get 2
                                call $fmt.parsenum
                                local.get 6
                                i32.load offset=56
                                local.set 15
                                local.get 6
                                i32.load offset=48
                                local.set 13
                                local.get 8
                                local.get 6
                                i32.load8_u offset=52
                                local.tee 16
                                i32.store8 offset=37
                                local.get 8
                                local.get 13
                                i32.store offset=52
                                local.get 16
                                i32.eqz
                                br_if 2 (;@12;)
                              end
                              local.get 14
                              i32.const 1
                              i32.and
                              i32.eqz
                              br_if 2 (;@11;)
                              br 3 (;@10;)
                            end
                            local.get 6
                            i32.const 32
                            i32.add
                            local.get 3
                            local.get 4
                            local.get 12
                            call $fmt.intFromArg
                            local.get 6
                            i32.load offset=40
                            local.set 12
                            local.get 6
                            i32.load8_u offset=36
                            local.set 14
                            local.get 8
                            local.get 6
                            i32.load offset=32
                            local.tee 13
                            i32.store offset=52
                            local.get 8
                            local.get 14
                            i32.const 1
                            i32.and
                            local.tee 14
                            i32.store8 offset=37
                            local.get 15
                            i32.const 1
                            i32.add
                            local.set 15
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 13
                                i32.const 0
                                i32.ge_s
                                br_if 0 (;@14;)
                                local.get 8
                                i32.const 0
                                i32.store8 offset=37
                                local.get 8
                                i32.const 0
                                i32.store offset=52
                                br 1 (;@13;)
                              end
                              local.get 14
                              br_if 2 (;@11;)
                            end
                            local.get 8
                            i32.const 71717
                            i32.const 11
                            call $_*fmt.buffer_.writeString
                            br 1 (;@11;)
                          end
                          local.get 8
                          i32.const 1
                          i32.store8 offset=37
                          local.get 8
                          i32.const 0
                          i32.store offset=52
                          local.get 14
                          i32.const 1
                          i32.and
                          br_if 1 (;@10;)
                        end
                        local.get 6
                        i32.const 16
                        i32.add
                        local.get 8
                        local.get 12
                        local.get 1
                        local.get 2
                        local.get 15
                        local.get 4
                        call $_*fmt.pp_.argNumber
                        local.get 6
                        i32.load offset=20
                        local.set 15
                        local.get 6
                        i32.load offset=16
                        local.set 12
                      end
                      block  ;; label = @10
                        local.get 15
                        local.get 2
                        i32.ge_s
                        br_if 0 (;@10;)
                        local.get 15
                        local.get 2
                        i32.ge_u
                        br_if 7 (;@3;)
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 1
                            local.get 15
                            i32.add
                            local.tee 13
                            i32.load8_s
                            local.tee 14
                            i32.const -1
                            i32.le_s
                            br_if 0 (;@12;)
                            local.get 14
                            i32.const 255
                            i32.and
                            local.set 14
                            i32.const 1
                            local.set 13
                            br 1 (;@11;)
                          end
                          local.get 6
                          local.get 13
                          local.get 2
                          local.get 15
                          i32.sub
                          call $unicode/utf8.DecodeRuneInString
                          local.get 6
                          i32.load offset=4
                          local.set 13
                          local.get 6
                          i32.load
                          local.set 14
                        end
                        local.get 13
                        local.get 15
                        i32.add
                        local.set 13
                        block  ;; label = @11
                          local.get 14
                          i32.const 37
                          i32.ne
                          br_if 0 (;@11;)
                          local.get 8
                          i32.const 37
                          call $_*fmt.buffer_.writeByte
                          br 7 (;@4;)
                        end
                        local.get 8
                        i32.load8_u offset=125
                        br_if 5 (;@5;)
                        local.get 8
                        i32.const 71788
                        i32.const 2
                        call $_*fmt.buffer_.writeString
                        local.get 8
                        local.get 14
                        call $_*fmt.buffer_.writeRune
                        local.get 8
                        i32.const 71695
                        i32.const 10
                        call $_*fmt.buffer_.writeString
                        br 6 (;@4;)
                      end
                      local.get 8
                      i32.const 71728
                      i32.const 10
                      call $_*fmt.buffer_.writeString
                    end
                    local.get 12
                    local.get 4
                    i32.ge_s
                    br_if 2 (;@6;)
                    local.get 8
                    i32.load8_u offset=124
                    i32.const 1
                    i32.and
                    br_if 2 (;@6;)
                    local.get 9
                    call $_*fmt.fmt_.clearflags
                    local.get 8
                    i32.const 71738
                    i32.const 9
                    call $_*fmt.buffer_.writeString
                    local.get 4
                    local.get 5
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 12
                    local.get 4
                    i32.gt_u
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 15
                    local.get 4
                    local.get 12
                    i32.sub
                    local.tee 13
                    i32.const 0
                    local.get 13
                    i32.const 0
                    i32.gt_s
                    select
                    local.set 4
                    local.get 3
                    local.get 12
                    i32.const 3
                    i32.shl
                    i32.add
                    local.set 2
                    local.get 6
                    i32.const 172
                    i32.add
                    local.set 12
                    br 1 (;@7;)
                  end
                  call $runtime.slicePanic
                  unreachable
                end
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 4
                    local.get 15
                    i32.eq
                    br_if 1 (;@7;)
                    local.get 13
                    local.get 15
                    i32.eq
                    br_if 5 (;@3;)
                    local.get 2
                    i32.load
                    local.set 1
                    local.get 12
                    local.get 2
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 14
                    i32.store
                    block  ;; label = @9
                      local.get 15
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 8
                      i32.const 71840
                      i32.const 2
                      call $_*fmt.buffer_.writeString
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        br_if 0 (;@10;)
                        local.get 8
                        i32.const 71842
                        i32.const 5
                        call $_*fmt.buffer_.writeString
                        br 1 (;@9;)
                      end
                      local.get 1
                      local.get 14
                      call $reflect.TypeOf
                      local.get 8
                      i32.const 66056
                      i32.const 1
                      call $_*fmt.buffer_.writeString
                      local.get 8
                      i32.const 61
                      call $_*fmt.buffer_.writeByte
                      local.get 8
                      local.get 1
                      local.get 14
                      i32.const 118
                      call $_*fmt.pp_.printArg
                    end
                    local.get 2
                    i32.const 8
                    i32.add
                    local.set 2
                    local.get 15
                    i32.const 1
                    i32.add
                    local.set 15
                    br 0 (;@8;)
                  end
                end
                local.get 8
                i32.const 41
                call $_*fmt.buffer_.writeByte
              end
              local.get 6
              i32.const 176
              i32.add
              local.get 8
              i32.load
              local.tee 15
              i32.store
              local.get 6
              i32.const 8
              i32.add
              local.get 15
              local.get 8
              i32.load offset=4
              local.get 8
              i32.load offset=8
              call $runtime.stringFromBytes
              local.get 6
              i32.const 180
              i32.add
              local.get 6
              i32.load offset=8
              local.tee 2
              i32.store
              local.get 6
              i32.const 184
              i32.add
              local.get 8
              i32.const 136
              i32.add
              i32.load
              i32.store
              local.get 6
              i32.load offset=12
              local.set 1
              local.get 8
              i32.load offset=132
              i32.eqz
              br_if 3 (;@2;)
              local.get 6
              i32.const 156
              i32.add
              i32.const 16
              call $runtime.alloc
              local.tee 15
              i32.store
              local.get 8
              i32.load offset=136
              local.set 14
              local.get 15
              local.get 8
              i32.load offset=132
              i32.store offset=8
              local.get 15
              local.get 14
              i32.store offset=12
              local.get 15
              local.get 1
              i32.store offset=4
              local.get 15
              local.get 2
              i32.store
              local.get 6
              i32.const 160
              i32.add
              local.get 14
              i32.store
              i32.const 5093
              local.set 2
              br 4 (;@1;)
            end
            block  ;; label = @5
              local.get 12
              local.get 4
              i32.lt_s
              br_if 0 (;@5;)
              local.get 8
              i32.const 71788
              i32.const 2
              call $_*fmt.buffer_.writeString
              local.get 8
              local.get 14
              call $_*fmt.buffer_.writeRune
              local.get 8
              i32.const 71790
              i32.const 9
              call $_*fmt.buffer_.writeString
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 14
              i32.const 118
              i32.ne
              br_if 0 (;@5;)
              local.get 8
              i32.load8_u offset=39
              local.set 15
              local.get 8
              i32.load8_u offset=40
              local.set 16
              local.get 8
              i32.const 0
              i32.store16 offset=39 align=1
              local.get 8
              local.get 16
              i32.const 1
              i32.and
              i32.store8 offset=44
              local.get 8
              local.get 15
              i32.const 1
              i32.and
              i32.store8 offset=43
            end
            local.get 12
            local.get 4
            i32.ge_u
            br_if 1 (;@3;)
            local.get 11
            local.get 3
            local.get 12
            i32.const 3
            i32.shl
            i32.add
            local.tee 15
            i32.load offset=4
            local.tee 16
            i32.store
            local.get 8
            local.get 15
            i32.load
            local.get 16
            local.get 14
            call $_*fmt.pp_.printArg
            local.get 12
            i32.const 1
            i32.add
            local.set 12
            br 0 (;@4;)
          end
        end
        call $runtime.lookupPanic
        unreachable
      end
      local.get 6
      i32.const 140
      i32.add
      i32.const 8
      call $runtime.alloc
      local.tee 15
      i32.store
      local.get 6
      i32.const 144
      i32.add
      local.get 15
      i32.store
      local.get 15
      local.get 1
      i32.store offset=4
      local.get 15
      local.get 2
      i32.store
      i32.const 11237
      local.set 2
    end
    local.get 6
    i32.const 152
    i32.add
    local.get 15
    i32.store
    local.get 6
    i32.const 148
    i32.add
    local.get 15
    i32.store
    local.get 8
    call $_*fmt.pp_.free
    i32.const 0
    local.get 7
    i32.store offset=83624
    local.get 0
    local.get 15
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
    local.get 6
    i32.const 192
    i32.add
    global.set 0)
  (func $fmt.newPrinter (type 25) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 0
    i32.store offset=28
    local.get 0
    i64.const 0
    i64.store offset=20 align=4
    local.get 0
    i64.const 4
    i64.store offset=12 align=4
    i32.const 0
    i32.load offset=83624
    local.set 1
    i32.const 0
    local.get 0
    i32.const 8
    i32.add
    i32.store offset=83624
    local.get 0
    local.get 1
    i32.store offset=8
    i32.const 140
    call $runtime.alloc
    local.tee 2
    i32.const 0
    i32.store8 offset=128
    local.get 2
    i32.const 0
    i32.store16 offset=126 align=1
    local.get 0
    local.get 2
    i32.store offset=24
    local.get 0
    local.get 2
    i32.store offset=28
    local.get 0
    local.get 2
    i32.store offset=20
    local.get 0
    local.get 2
    i32.store offset=16
    local.get 2
    local.get 2
    i32.store offset=32
    local.get 2
    i32.const 32
    i32.add
    call $_*fmt.fmt_.clearflags
    i32.const 0
    local.get 1
    i32.store offset=83624
    local.get 0
    i32.const 32
    i32.add
    global.set 0
    local.get 2)
  (func $_*fmt.buffer_.writeString (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 0
    i32.store offset=28
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 3
    i32.const 16
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 4
    i32.store offset=16
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 3
    i32.const 24
    i32.add
    local.get 0
    i32.load
    local.tee 5
    i32.store
    local.get 3
    local.get 5
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    local.get 2
    i32.const 1
    call $runtime.sliceAppend
    i32.const 0
    local.get 4
    i32.store offset=83624
    local.get 3
    i64.load offset=4 align=4
    local.set 6
    local.get 0
    local.get 3
    i32.load
    local.tee 4
    i32.store
    local.get 3
    i32.const 28
    i32.add
    local.get 4
    i32.store
    local.get 0
    local.get 6
    i64.store offset=4 align=4
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func $_*fmt.fmt_.clearflags (type 2) (param i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 0
    i64.const 0
    i64.store offset=4 align=1
    local.get 1
    i32.const 8
    i32.add
    i32.const 0
    i32.store8
    local.get 0
    i32.const 12
    i32.add
    i32.const 0
    i32.store8
    local.get 1
    i64.const 0
    i64.store
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func $_*fmt.pp_.printArg (type 7) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i64.const 0
    i64.store offset=100 align=4
    local.get 4
    i64.const 0
    i64.store offset=92 align=4
    local.get 4
    i64.const 0
    i64.store offset=84 align=4
    local.get 4
    i64.const 0
    i64.store offset=76 align=4
    local.get 4
    i64.const 9
    i64.store offset=68 align=4
    i32.const 0
    i32.load offset=83624
    local.set 5
    i32.const 0
    local.get 4
    i32.const 64
    i32.add
    i32.store offset=83624
    local.get 4
    local.get 5
    i32.store offset=64
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    i64.const 0
    i64.store offset=20 align=4
    local.get 0
    i32.const 16
    i32.add
    local.get 2
    i32.store
    local.get 4
    i32.const 40
    i32.add
    i32.const 0
    i32.store8
    local.get 0
    i32.const 28
    i32.add
    i32.const 0
    i32.store
    local.get 4
    i64.const 0
    i64.store offset=32
    local.get 4
    i32.const 88
    i32.add
    local.get 4
    i32.const 32
    i32.add
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 84
              i32.eq
              br_if 0 (;@5;)
              local.get 3
              i32.const 112
              i32.eq
              br_if 2 (;@3;)
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.const -26
                          i32.add
                          br_table 1 (;@10;) 5 (;@6;) 2 (;@9;) 5 (;@6;) 3 (;@8;) 5 (;@6;) 4 (;@7;) 0 (;@11;)
                        end
                        local.get 1
                        i32.const 2
                        i32.ne
                        br_if 4 (;@6;)
                        local.get 0
                        local.get 2
                        i32.const 1
                        i32.and
                        local.get 3
                        call $_*fmt.pp_.fmtBool
                        br 9 (;@1;)
                      end
                      local.get 0
                      local.get 2
                      f32.reinterpret_i32
                      f64.promote_f32
                      i32.const 32
                      local.get 3
                      call $_*fmt.pp_.fmtFloat
                      br 8 (;@1;)
                    end
                    local.get 0
                    local.get 2
                    f64.load
                    i32.const 64
                    local.get 3
                    call $_*fmt.pp_.fmtFloat
                    br 7 (;@1;)
                  end
                  local.get 0
                  local.get 2
                  f32.load
                  f64.promote_f32
                  local.get 2
                  f32.load offset=4
                  f64.promote_f32
                  i32.const 64
                  local.get 3
                  call $_*fmt.pp_.fmtComplex
                  br 6 (;@1;)
                end
                local.get 0
                local.get 2
                f64.load
                local.get 2
                f64.load offset=8
                i32.const 128
                local.get 3
                call $_*fmt.pp_.fmtComplex
                br 5 (;@1;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 1
                                          i32.const 33
                                          i32.gt_s
                                          br_if 0 (;@19;)
                                          local.get 1
                                          i32.const -4
                                          i32.add
                                          br_table 1 (;@18;) 13 (;@6;) 2 (;@17;) 13 (;@6;) 3 (;@16;) 13 (;@6;) 4 (;@15;) 13 (;@6;) 5 (;@14;) 13 (;@6;) 6 (;@13;) 13 (;@6;) 7 (;@12;) 13 (;@6;) 8 (;@11;) 13 (;@6;) 9 (;@10;) 13 (;@6;) 10 (;@9;) 13 (;@6;) 11 (;@8;) 13 (;@6;)
                                        end
                                        local.get 1
                                        i32.const 34
                                        i32.eq
                                        br_if 11 (;@7;)
                                        local.get 1
                                        i32.const 255
                                        i32.eq
                                        br_if 14 (;@4;)
                                        local.get 1
                                        i32.const 519
                                        i32.ne
                                        br_if 12 (;@6;)
                                        local.get 0
                                        local.get 2
                                        i32.load
                                        local.get 2
                                        i32.load offset=4
                                        local.get 2
                                        i32.load offset=8
                                        local.get 3
                                        i32.const 71799
                                        i32.const 6
                                        call $_*fmt.pp_.fmtBytes
                                        br 17 (;@1;)
                                      end
                                      local.get 0
                                      local.get 2
                                      i64.extend_i32_s
                                      i32.const 1
                                      local.get 3
                                      call $_*fmt.pp_.fmtInteger
                                      br 16 (;@1;)
                                    end
                                    local.get 0
                                    local.get 2
                                    i64.extend_i32_u
                                    i64.const 56
                                    i64.shl
                                    i64.const 56
                                    i64.shr_s
                                    i32.const 1
                                    local.get 3
                                    call $_*fmt.pp_.fmtInteger
                                    br 15 (;@1;)
                                  end
                                  local.get 0
                                  local.get 2
                                  i64.extend_i32_u
                                  i64.const 48
                                  i64.shl
                                  i64.const 48
                                  i64.shr_s
                                  i32.const 1
                                  local.get 3
                                  call $_*fmt.pp_.fmtInteger
                                  br 14 (;@1;)
                                end
                                local.get 0
                                local.get 2
                                i64.extend_i32_s
                                i32.const 1
                                local.get 3
                                call $_*fmt.pp_.fmtInteger
                                br 13 (;@1;)
                              end
                              local.get 0
                              local.get 2
                              i64.load
                              i32.const 1
                              local.get 3
                              call $_*fmt.pp_.fmtInteger
                              br 12 (;@1;)
                            end
                            local.get 0
                            local.get 2
                            i64.extend_i32_u
                            i32.const 0
                            local.get 3
                            call $_*fmt.pp_.fmtInteger
                            br 11 (;@1;)
                          end
                          local.get 0
                          local.get 2
                          i32.const 255
                          i32.and
                          i64.extend_i32_u
                          i32.const 0
                          local.get 3
                          call $_*fmt.pp_.fmtInteger
                          br 10 (;@1;)
                        end
                        local.get 0
                        local.get 2
                        i32.const 65535
                        i32.and
                        i64.extend_i32_u
                        i32.const 0
                        local.get 3
                        call $_*fmt.pp_.fmtInteger
                        br 9 (;@1;)
                      end
                      local.get 0
                      local.get 2
                      i64.extend_i32_u
                      i32.const 0
                      local.get 3
                      call $_*fmt.pp_.fmtInteger
                      br 8 (;@1;)
                    end
                    local.get 0
                    local.get 2
                    i64.load
                    i32.const 0
                    local.get 3
                    call $_*fmt.pp_.fmtInteger
                    br 7 (;@1;)
                  end
                  local.get 0
                  local.get 2
                  i64.extend_i32_u
                  i32.const 0
                  local.get 3
                  call $_*fmt.pp_.fmtInteger
                  br 6 (;@1;)
                end
                local.get 0
                local.get 2
                i32.load
                local.get 2
                i32.load offset=4
                local.get 3
                call $_*fmt.pp_.fmtString
                br 5 (;@1;)
              end
              local.get 0
              local.get 3
              call $_*fmt.pp_.handleMethods
              i32.const 1
              i32.and
              br_if 4 (;@1;)
              local.get 4
              i32.const 8
              i32.add
              local.get 1
              local.get 2
              call $reflect.ValueOf
              local.get 4
              i32.const 84
              i32.add
              local.get 4
              i32.load offset=12
              local.tee 1
              i32.store
              local.get 0
              local.get 4
              i32.load offset=8
              local.get 1
              i32.const 2
              local.get 3
              i32.const 0
              call $_*fmt.pp_.printValue
              br 4 (;@1;)
            end
            local.get 1
            local.get 2
            call $reflect.TypeOf
            local.get 0
            i32.const 32
            i32.add
            i32.const 66056
            i32.const 1
            call $_*fmt.fmt_.fmtS
            i32.const 0
            local.get 5
            i32.store offset=83624
            local.get 4
            i32.const 112
            i32.add
            global.set 0
            return
          end
          local.get 4
          i32.const 104
          i32.add
          local.get 2
          i32.load offset=4
          local.tee 1
          i32.store
          local.get 4
          i32.const 96
          i32.add
          local.get 1
          i32.store
          local.get 4
          i32.const 92
          i32.add
          local.get 1
          i32.store
          local.get 4
          i32.const 80
          i32.add
          local.get 1
          i32.store
          local.get 4
          i64.const 0
          i64.store offset=48
          local.get 4
          i32.const 76
          i32.add
          local.get 4
          i32.const 48
          i32.add
          i32.store
          local.get 4
          local.get 2
          i32.load
          local.tee 6
          i32.store offset=48
          local.get 4
          local.get 1
          i32.store offset=52
          local.get 4
          local.get 2
          i32.load8_u offset=8
          local.tee 2
          i32.store8 offset=56
          block  ;; label = @4
            local.get 6
            local.get 1
            local.get 2
            call $_reflect.Value_.IsValid
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            local.get 1
            local.get 2
            call $_reflect.Value_.CanInterface
            local.get 4
            i32.const 16
            i32.add
            local.get 6
            local.get 1
            local.get 2
            call $_reflect.Value_.Interface
            local.get 4
            i32.const 100
            i32.add
            local.get 4
            i32.load offset=20
            local.tee 7
            i32.store
            local.get 4
            i32.load offset=16
            local.set 8
            local.get 0
            local.get 7
            i32.store offset=16
            local.get 0
            local.get 8
            i32.store offset=12
            local.get 0
            local.get 3
            call $_*fmt.pp_.handleMethods
            i32.const 1
            i32.and
            br_if 3 (;@1;)
          end
          local.get 0
          local.get 6
          local.get 1
          local.get 2
          local.get 3
          i32.const 0
          call $_*fmt.pp_.printValue
          br 2 (;@1;)
        end
        local.get 4
        i32.const 24
        i32.add
        local.get 1
        local.get 2
        call $reflect.ValueOf
        local.get 4
        i32.const 72
        i32.add
        local.get 4
        i32.load offset=28
        local.tee 1
        i32.store
        local.get 0
        local.get 4
        i32.load offset=24
        local.get 1
        i32.const 2
        i32.const 112
        call $_*fmt.pp_.fmtPointer
        i32.const 0
        local.get 5
        i32.store offset=83624
        local.get 4
        i32.const 112
        i32.add
        global.set 0
        return
      end
      block  ;; label = @2
        local.get 3
        i32.const 84
        i32.eq
        br_if 0 (;@2;)
        local.get 3
        i32.const 118
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        call $_*fmt.pp_.badVerb
        br 1 (;@1;)
      end
      local.get 0
      i32.const 32
      i32.add
      i32.const 71842
      i32.const 5
      call $_*fmt.fmt_.padString
    end
    i32.const 0
    local.get 5
    i32.store offset=83624
    local.get 4
    i32.const 112
    i32.add
    global.set 0)
  (func $_*fmt.pp_.argNumber (type 12) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 7
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                local.get 5
                i32.le_s
                br_if 0 (;@6;)
                local.get 4
                local.get 5
                i32.le_u
                br_if 1 (;@5;)
                local.get 3
                local.get 5
                i32.add
                local.tee 3
                i32.load8_u
                i32.const 91
                i32.ne
                br_if 0 (;@6;)
                local.get 1
                i32.eqz
                br_if 2 (;@4;)
                i32.const 1
                local.set 8
                local.get 1
                i32.const 1
                i32.store8 offset=124
                i32.const 0
                local.set 9
                i32.const 0
                local.set 10
                local.get 4
                local.get 5
                i32.sub
                local.tee 11
                i32.const 3
                i32.lt_s
                br_if 5 (;@1;)
                i32.const 1
                local.set 8
                i32.const 1
                local.set 4
                loop  ;; label = @7
                  local.get 11
                  local.get 4
                  i32.eq
                  br_if 5 (;@2;)
                  local.get 3
                  local.get 4
                  i32.add
                  i32.load8_u
                  i32.const 93
                  i32.eq
                  br_if 4 (;@3;)
                  local.get 4
                  i32.const 1
                  i32.add
                  local.set 4
                  br 0 (;@7;)
                end
              end
              local.get 0
              i32.const 0
              i32.store8 offset=8
              local.get 0
              local.get 5
              i32.store offset=4
              local.get 0
              local.get 2
              i32.store
              local.get 7
              i32.const 16
              i32.add
              global.set 0
              return
            end
            call $runtime.lookupPanic
            unreachable
          end
          call $runtime.nilPanic
          unreachable
        end
        local.get 7
        local.get 3
        local.get 11
        i32.const 1
        local.get 4
        call $fmt.parsenum
        block  ;; label = @3
          local.get 7
          i32.load offset=8
          local.get 4
          i32.ne
          br_if 0 (;@3;)
          local.get 7
          i32.load8_u offset=4
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 1
          local.set 10
          local.get 4
          i32.const 1
          i32.add
          local.set 8
          local.get 7
          i32.load
          i32.const -1
          i32.add
          local.set 9
          br 2 (;@1;)
        end
        local.get 4
        i32.const 1
        i32.add
        local.set 8
      end
      i32.const 0
      local.set 9
      i32.const 0
      local.set 10
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 9
        local.get 6
        i32.ge_s
        br_if 0 (;@2;)
        local.get 10
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 9
        i32.const -1
        i32.gt_s
        br_if 1 (;@1;)
      end
      local.get 1
      i32.const 0
      i32.store8 offset=125
      local.get 0
      local.get 10
      i32.const 1
      i32.and
      i32.store8 offset=8
      local.get 0
      local.get 8
      local.get 5
      i32.add
      i32.store offset=4
      local.get 0
      local.get 2
      i32.store
      local.get 7
      i32.const 16
      i32.add
      global.set 0
      return
    end
    local.get 0
    i32.const 1
    i32.store8 offset=8
    local.get 0
    local.get 9
    i32.store
    local.get 0
    local.get 8
    local.get 5
    i32.add
    i32.store offset=4
    local.get 7
    i32.const 16
    i32.add
    global.set 0)
  (func $fmt.parsenum (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 3
      local.get 4
      i32.ge_s
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      local.get 3
      local.get 2
      i32.gt_u
      select
      local.set 5
      i32.const 0
      local.set 2
      i32.const 0
      local.set 6
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            local.get 3
            i32.eq
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 5
              local.get 3
              i32.ne
              br_if 0 (;@5;)
              call $runtime.lookupPanic
              unreachable
            end
            local.get 1
            local.get 3
            i32.add
            i32.load8_u
            i32.const -48
            i32.add
            i32.const 255
            i32.and
            local.tee 7
            i32.const 10
            i32.lt_u
            br_if 1 (;@3;)
            local.get 3
            local.set 4
          end
          local.get 0
          local.get 4
          i32.store offset=8
          local.get 0
          local.get 2
          i32.store
          local.get 0
          local.get 6
          i32.const 1
          i32.and
          i32.store8 offset=4
          return
        end
        block  ;; label = @3
          local.get 2
          i32.const 1000000
          i32.add
          i32.const 2000001
          i32.ge_u
          br_if 0 (;@3;)
          local.get 2
          i32.const 10
          i32.mul
          local.get 7
          i32.add
          local.set 2
          i32.const 1
          local.set 6
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          br 1 (;@2;)
        end
      end
      local.get 0
      local.get 4
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store8 offset=4
      local.get 0
      i32.const 0
      i32.store
      return
    end
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    i32.const 0
    i32.store8 offset=4
    local.get 0
    i32.const 0
    i32.store)
  (func $fmt.intFromArg (type 7) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i64.const 0
    i64.store offset=52 align=4
    local.get 4
    i64.const 0
    i64.store offset=44 align=4
    local.get 4
    i64.const 0
    i64.store offset=36 align=4
    local.get 4
    i64.const 7
    i64.store offset=28 align=4
    i32.const 0
    i32.load offset=83624
    local.set 5
    i32.const 0
    local.get 4
    i32.const 24
    i32.add
    i32.store offset=83624
    local.get 4
    local.get 5
    i32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        local.get 2
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            local.get 2
            i32.ge_u
            br_if 0 (;@4;)
            local.get 4
            i32.const 48
            i32.add
            local.get 1
            local.get 3
            i32.const 3
            i32.shl
            i32.add
            local.tee 1
            i32.load offset=4
            local.tee 2
            i32.store
            local.get 1
            i32.load
            i32.const 4
            i32.eq
            local.tee 6
            i32.eqz
            br_if 1 (;@3;)
            i32.const 1
            local.set 6
            br 2 (;@2;)
          end
          call $runtime.lookupPanic
          unreachable
        end
        local.get 2
        i32.const 0
        local.get 6
        select
        local.set 7
        local.get 4
        i32.const 36
        i32.add
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.tee 2
        i32.store
        local.get 4
        i64.const 0
        i64.store offset=8
        local.get 4
        i32.const 0
        i32.store8 offset=16
        local.get 4
        i32.const 32
        i32.add
        local.get 4
        i32.const 8
        i32.add
        i32.store
        local.get 4
        local.get 1
        i32.load
        local.get 2
        call $reflect.ValueOf
        local.get 4
        i32.const 56
        i32.add
        local.get 4
        i32.load offset=4
        local.tee 1
        i32.store
        local.get 4
        i32.const 52
        i32.add
        local.get 1
        i32.store
        local.get 4
        i32.const 44
        i32.add
        local.get 1
        i32.store
        local.get 4
        i32.const 40
        i32.add
        local.get 1
        i32.store
        local.get 4
        i32.const 2
        i32.store8 offset=16
        local.get 4
        local.get 1
        i32.store offset=12
        local.get 4
        local.get 4
        i32.load
        local.tee 8
        i32.store offset=8
        i32.const 0
        local.set 2
        i32.const 0
        local.set 6
        block  ;; label = @3
          block  ;; label = @4
            local.get 8
            local.get 1
            i32.const 2
            call $_reflect.Value_.Kind
            i32.const -2
            i32.add
            br_table 0 (;@4;) 0 (;@4;) 0 (;@4;) 0 (;@4;) 0 (;@4;) 1 (;@3;) 1 (;@3;) 1 (;@3;) 1 (;@3;) 1 (;@3;) 1 (;@3;) 2 (;@2;)
          end
          local.get 8
          local.get 1
          i32.const 2
          call $_reflect.Value_.Int
          local.tee 9
          i32.wrap_i64
          local.get 7
          local.get 9
          i64.const 2147483648
          i64.add
          i64.const 4294967296
          i64.lt_u
          local.tee 6
          select
          local.set 2
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 8
          local.get 1
          i32.const 2
          call $_reflect.Value_.Uint
          local.tee 9
          i64.const -1
          i64.gt_s
          br_if 0 (;@3;)
          i32.const 0
          local.set 2
          i32.const 0
          local.set 6
          br 1 (;@2;)
        end
        local.get 9
        i32.wrap_i64
        local.get 7
        local.get 9
        i64.const 2147483648
        i64.lt_u
        local.tee 6
        select
        local.set 2
      end
      i32.const 0
      local.get 2
      local.get 2
      i32.const 1000000
      i32.add
      local.tee 1
      i32.const 2000000
      i32.gt_u
      select
      local.set 2
      local.get 3
      i32.const 1
      i32.add
      local.set 3
      local.get 6
      local.get 1
      i32.const 2000001
      i32.lt_u
      i32.and
      local.set 1
    end
    i32.const 0
    local.get 5
    i32.store offset=83624
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store8 offset=4
    local.get 0
    local.get 2
    i32.store
    local.get 4
    i32.const 64
    i32.add
    global.set 0)
  (func $_*fmt.buffer_.writeByte (type 4) (param i32 i32)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i64.const 0
    i64.store offset=36 align=4
    local.get 2
    i64.const 3
    i64.store offset=28 align=4
    i32.const 0
    i32.load offset=83624
    local.set 3
    i32.const 0
    local.get 2
    i32.const 24
    i32.add
    i32.store offset=83624
    local.get 2
    local.get 3
    i32.store offset=24
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 2
    i32.const 32
    i32.add
    local.get 0
    i32.load
    local.tee 4
    i32.store
    local.get 2
    i32.const 0
    i32.store offset=20
    local.get 2
    local.get 1
    i32.store8 offset=20
    local.get 2
    i32.const 36
    i32.add
    local.get 2
    i32.const 20
    i32.add
    i32.store
    local.get 2
    i32.const 8
    i32.add
    local.get 4
    local.get 2
    i32.const 20
    i32.add
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    i32.const 1
    i32.const 1
    call $runtime.sliceAppend
    i32.const 0
    local.get 3
    i32.store offset=83624
    local.get 2
    i64.load offset=12 align=4
    local.set 5
    local.get 0
    local.get 2
    i32.load offset=8
    local.tee 3
    i32.store
    local.get 2
    i32.const 40
    i32.add
    local.get 3
    i32.store
    local.get 0
    local.get 5
    i64.store offset=4 align=4
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func $_*fmt.buffer_.writeRune (type 4) (param i32 i32)
    (local i32 i32 i32 i64 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i64.const 0
    i64.store offset=68 align=4
    local.get 2
    i64.const 0
    i64.store offset=60 align=4
    local.get 2
    i64.const 0
    i64.store offset=52 align=4
    local.get 2
    i64.const 7
    i64.store offset=44 align=4
    i32.const 0
    i32.load offset=83624
    local.set 3
    i32.const 0
    local.get 2
    i32.const 40
    i32.add
    i32.store offset=83624
    local.get 2
    local.get 3
    i32.store offset=40
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 127
        i32.gt_s
        br_if 0 (;@2;)
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.const 60
        i32.add
        local.get 0
        i32.load
        local.tee 4
        i32.store
        local.get 2
        i32.const 0
        i32.store offset=36
        local.get 2
        local.get 1
        i32.store8 offset=36
        local.get 2
        i32.const 64
        i32.add
        local.get 2
        i32.const 36
        i32.add
        i32.store
        local.get 2
        local.get 4
        local.get 2
        i32.const 36
        i32.add
        local.get 0
        i32.load offset=4
        local.get 0
        i32.load offset=8
        i32.const 1
        i32.const 1
        call $runtime.sliceAppend
        i32.const 0
        local.get 3
        i32.store offset=83624
        local.get 2
        i64.load offset=4 align=4
        local.set 5
        local.get 0
        local.get 2
        i32.load
        local.tee 4
        i32.store
        local.get 2
        i32.const 68
        i32.add
        local.get 4
        i32.store
        local.get 0
        local.get 5
        i64.store offset=4 align=4
        local.get 2
        i32.const 80
        i32.add
        global.set 0
        return
      end
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 72
      i32.add
      local.get 0
      i32.load
      local.tee 6
      i32.store
      local.get 2
      i32.const 52
      i32.add
      local.get 2
      i32.const 32
      i32.add
      i32.store
      local.get 0
      i32.load offset=4
      local.tee 7
      i32.const 4
      i32.add
      local.set 8
      local.get 0
      i32.load offset=8
      local.set 4
      local.get 2
      i32.const 48
      i32.add
      local.set 9
      local.get 2
      i32.const 56
      i32.add
      local.set 10
      local.get 7
      local.set 11
      block  ;; label = @2
        loop  ;; label = @3
          local.get 9
          local.get 6
          i32.store
          local.get 8
          local.get 4
          i32.le_s
          br_if 1 (;@2;)
          local.get 2
          i32.const 0
          i32.store offset=32
          local.get 2
          i32.const 0
          i32.store8 offset=32
          local.get 2
          i32.const 16
          i32.add
          local.get 6
          local.get 2
          i32.const 32
          i32.add
          local.get 11
          local.get 4
          i32.const 1
          i32.const 1
          call $runtime.sliceAppend
          local.get 10
          local.get 2
          i32.load offset=16
          local.tee 6
          i32.store
          local.get 2
          i32.load offset=24
          local.set 4
          local.get 2
          i32.load offset=20
          local.set 11
          br 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 7
        i32.const -5
        i32.gt_u
        br_if 0 (;@2;)
        local.get 8
        local.get 4
        i32.gt_u
        br_if 0 (;@2;)
        local.get 6
        local.get 7
        i32.add
        i32.const 4
        local.get 1
        call $unicode/utf8.EncodeRune
        local.get 7
        i32.add
        local.tee 11
        local.get 4
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.store offset=8
        local.get 0
        local.get 11
        i32.store offset=4
        local.get 0
        local.get 6
        i32.store
        i32.const 0
        local.get 3
        i32.store offset=83624
        local.get 2
        i32.const 80
        i32.add
        global.set 0
        return
      end
      call $runtime.slicePanic
      unreachable
    end
    call $runtime.nilPanic
    unreachable)
  (func $_*fmt.pp_.free (type 2) (param i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=8
        i32.const 65536
        i32.le_s
        br_if 1 (;@1;)
        local.get 1
        i32.const 16
        i32.add
        global.set 0
        return
      end
      call $runtime.nilPanic
      unreachable
    end
    local.get 0
    i64.const 0
    i64.store offset=12 align=4
    local.get 0
    i32.const 0
    i32.store offset=4
    local.get 0
    i64.const 0
    i64.store offset=20 align=4
    local.get 0
    i64.const 0
    i64.store offset=132 align=4
    local.get 1
    i32.const 8
    i32.add
    i32.const 0
    i32.store8
    local.get 0
    i32.const 28
    i32.add
    i32.const 0
    i32.store
    local.get 1
    i64.const 0
    i64.store
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func $_*os.File_.Write (type 7) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i32.const 0
    i32.store offset=44
    local.get 4
    i64.const 0
    i64.store offset=36 align=4
    local.get 4
    i64.const 0
    i64.store offset=28 align=4
    local.get 4
    i64.const 6
    i64.store offset=20 align=4
    i32.const 0
    i32.load offset=83624
    local.set 5
    i32.const 0
    local.get 4
    i32.const 16
    i32.add
    i32.store offset=83624
    local.get 4
    local.get 5
    i32.store offset=16
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.const 40
      i32.add
      local.get 1
      i32.load offset=4
      local.tee 6
      i32.store
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load
          local.tee 7
          i32.const 272
          i32.eq
          br_if 0 (;@3;)
          local.get 7
          i32.const 12261
          i32.ne
          br_if 2 (;@1;)
          local.get 4
          local.get 6
          local.get 2
          local.get 3
          call $_*os.File_.Write
          local.get 4
          i32.load offset=8
          local.set 7
          local.get 4
          i32.load offset=4
          local.set 2
          local.get 4
          i32.load
          local.set 3
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 6
          i32.const -1
          i32.add
          i32.const 255
          i32.and
          i32.const 1
          i32.le_u
          br_if 0 (;@3;)
          i32.const 82684
          local.set 7
          i32.const 11237
          local.set 2
          i32.const 0
          local.set 3
          br 1 (;@2;)
        end
        i32.const 0
        local.set 6
        local.get 3
        i32.const 0
        local.get 3
        i32.const 0
        i32.gt_s
        select
        local.set 7
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 7
              local.get 6
              i32.eq
              br_if 1 (;@4;)
              local.get 3
              local.get 6
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              local.get 6
              i32.add
              i32.load8_u
              call $runtime.putchar
              local.get 6
              i32.const 1
              i32.add
              local.set 6
              br 0 (;@5;)
            end
          end
          i32.const 0
          local.set 2
          i32.const 0
          local.set 7
          br 1 (;@2;)
        end
        call $runtime.lookupPanic
        unreachable
      end
      local.get 4
      i32.const 44
      i32.add
      local.get 7
      i32.store
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          local.get 7
          local.set 6
          br 1 (;@2;)
        end
        local.get 4
        i32.const 24
        i32.add
        i32.const 24
        call $runtime.alloc
        local.tee 6
        i32.store
        local.get 4
        i32.const 32
        i32.add
        local.get 6
        i32.store
        local.get 6
        local.get 7
        i32.store offset=20
        local.get 6
        local.get 2
        i32.store offset=16
        local.get 6
        i32.const 5
        i32.store offset=4
        local.get 6
        i32.const 72254
        i32.store
        local.get 4
        i32.const 16
        i32.add
        i32.const 12
        i32.add
        local.get 1
        i32.load offset=8
        local.tee 2
        i32.store
        local.get 6
        local.get 1
        i32.const 12
        i32.add
        i32.load
        i32.store offset=12
        local.get 6
        local.get 2
        i32.store offset=8
        i32.const 3045
        local.set 2
      end
      i32.const 0
      local.get 5
      i32.store offset=83624
      local.get 4
      i32.const 36
      i32.add
      local.get 6
      i32.store
      local.get 0
      local.get 6
      i32.store offset=8
      local.get 0
      local.get 2
      i32.store offset=4
      local.get 0
      local.get 3
      i32.store
      local.get 4
      i32.const 48
      i32.add
      global.set 0
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $_*fmt.pp_.badVerb (type 4) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=28
    local.get 2
    i64.const 0
    i64.store offset=20 align=4
    local.get 2
    i64.const 0
    i64.store offset=12 align=4
    local.get 2
    i64.const 6
    i64.store offset=4 align=4
    i32.const 0
    i32.load offset=83624
    local.set 3
    i32.const 0
    local.get 2
    i32.store offset=83624
    local.get 2
    local.get 3
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 1
        i32.store8 offset=127
        local.get 0
        i32.const 71788
        i32.const 2
        call $_*fmt.buffer_.writeString
        local.get 0
        local.get 1
        call $_*fmt.buffer_.writeRune
        local.get 0
        i32.const 40
        call $_*fmt.buffer_.writeByte
        local.get 2
        i32.const 8
        i32.add
        local.get 0
        i32.const 16
        i32.add
        i32.load
        i32.store
        block  ;; label = @3
          local.get 0
          i32.load offset=12
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.const 12
          i32.add
          local.get 0
          i32.load offset=16
          local.tee 1
          i32.store
          local.get 0
          i32.load offset=12
          local.get 1
          call $reflect.TypeOf
          local.get 0
          i32.const 66056
          i32.const 1
          call $_*fmt.buffer_.writeString
          local.get 0
          i32.const 61
          call $_*fmt.buffer_.writeByte
          local.get 2
          i32.const 16
          i32.add
          local.get 0
          i32.load offset=16
          local.tee 1
          i32.store
          local.get 0
          local.get 0
          i32.load offset=12
          local.get 1
          i32.const 118
          call $_*fmt.pp_.printArg
          br 2 (;@1;)
        end
        local.get 2
        i32.const 20
        i32.add
        local.get 0
        i32.const 24
        i32.add
        local.tee 1
        i32.load
        local.tee 4
        i32.store
        block  ;; label = @3
          local.get 0
          i32.load offset=20
          local.get 4
          local.get 0
          i32.const 28
          i32.add
          local.tee 5
          i32.load8_u
          call $_reflect.Value_.IsValid
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.const 24
          i32.add
          local.get 1
          i32.load
          local.tee 4
          i32.store
          local.get 0
          i32.load offset=20
          local.get 4
          local.get 5
          i32.load8_u
          call $_reflect.Value_.Type
          drop
          local.get 0
          i32.const 66056
          i32.const 1
          call $_*fmt.buffer_.writeString
          local.get 0
          i32.const 61
          call $_*fmt.buffer_.writeByte
          local.get 2
          i32.const 28
          i32.add
          local.get 1
          i32.load
          local.tee 1
          i32.store
          local.get 0
          local.get 0
          i32.load offset=20
          local.get 1
          local.get 5
          i32.load8_u
          i32.const 118
          i32.const 0
          call $_*fmt.pp_.printValue
          br 2 (;@1;)
        end
        local.get 0
        i32.const 71842
        i32.const 5
        call $_*fmt.buffer_.writeString
        br 1 (;@1;)
      end
      call $runtime.nilPanic
      unreachable
    end
    local.get 0
    i32.const 41
    call $_*fmt.buffer_.writeByte
    i32.const 0
    local.get 3
    i32.store offset=83624
    local.get 0
    i32.const 0
    i32.store8 offset=127
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func $_*fmt.pp_.printValue (type 21) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 496
    i32.sub
    local.tee 6
    global.set 0
    local.get 6
    i32.const 0
    i32.store offset=488
    local.get 6
    i64.const 0
    i64.store offset=480
    local.get 6
    i64.const 0
    i64.store offset=472
    local.get 6
    i64.const 0
    i64.store offset=464
    local.get 6
    i64.const 0
    i64.store offset=456
    local.get 6
    i64.const 0
    i64.store offset=448
    local.get 6
    i64.const 0
    i64.store offset=440
    local.get 6
    i64.const 0
    i64.store offset=432
    local.get 6
    i64.const 0
    i64.store offset=424
    local.get 6
    i64.const 0
    i64.store offset=416
    local.get 6
    i64.const 0
    i64.store offset=408
    local.get 6
    i64.const 0
    i64.store offset=400
    local.get 6
    i64.const 0
    i64.store offset=392
    local.get 6
    i64.const 0
    i64.store offset=384
    local.get 6
    i64.const 0
    i64.store offset=376
    local.get 6
    i64.const 0
    i64.store offset=368
    local.get 6
    i64.const 0
    i64.store offset=360
    local.get 6
    i64.const 0
    i64.store offset=352
    local.get 6
    i64.const 0
    i64.store offset=344
    local.get 6
    i64.const 0
    i64.store offset=336
    local.get 6
    i64.const 0
    i64.store offset=328
    local.get 6
    i64.const 0
    i64.store offset=320
    local.get 6
    i64.const 0
    i64.store offset=312
    local.get 6
    i64.const 0
    i64.store offset=304
    local.get 6
    i64.const 201863462912
    i64.store offset=296
    local.get 6
    i64.const 0
    i64.store offset=184
    local.get 6
    local.get 3
    i32.store8 offset=192
    local.get 6
    i32.const 0
    i32.load offset=83624
    local.tee 7
    i32.store offset=296
    i32.const 0
    local.get 6
    i32.const 296
    i32.add
    i32.store offset=83624
    local.get 6
    local.get 1
    i32.store offset=184
    local.get 6
    local.get 2
    i32.store offset=188
    local.get 6
    local.get 6
    i32.const 184
    i32.add
    i32.store offset=304
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 5
                        i32.const 0
                        i32.le_s
                        br_if 0 (;@10;)
                        local.get 1
                        local.get 2
                        local.get 3
                        call $_reflect.Value_.IsValid
                        i32.const 1
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 1
                        local.get 2
                        local.get 3
                        call $_reflect.Value_.CanInterface
                        local.get 0
                        i32.eqz
                        br_if 2 (;@8;)
                        local.get 6
                        i32.const 176
                        i32.add
                        local.get 1
                        local.get 2
                        local.get 3
                        call $_reflect.Value_.Interface
                        local.get 6
                        i32.const 340
                        i32.add
                        local.get 6
                        i32.load offset=180
                        local.tee 8
                        i32.store
                        local.get 6
                        i32.load offset=176
                        local.set 9
                        local.get 0
                        i32.const 16
                        i32.add
                        local.get 8
                        i32.store
                        local.get 0
                        local.get 9
                        i32.store offset=12
                        local.get 0
                        local.get 4
                        call $_*fmt.pp_.handleMethods
                        i32.const 1
                        i32.and
                        i32.eqz
                        br_if 1 (;@9;)
                        br 8 (;@2;)
                      end
                      local.get 0
                      i32.eqz
                      br_if 1 (;@8;)
                    end
                    local.get 0
                    local.get 1
                    i32.store offset=20
                    local.get 0
                    i64.const 0
                    i64.store offset=12 align=4
                    local.get 0
                    i32.const 24
                    i32.add
                    local.get 2
                    i32.store
                    local.get 0
                    i32.const 28
                    i32.add
                    local.get 3
                    i32.store8
                    local.get 6
                    i64.const 0
                    i64.store offset=200
                    local.get 6
                    local.get 3
                    i32.store8 offset=208
                    local.get 6
                    i32.const 344
                    i32.add
                    local.get 6
                    i32.const 200
                    i32.add
                    i32.store
                    local.get 6
                    local.get 2
                    i32.store offset=204
                    local.get 6
                    local.get 1
                    i32.store offset=200
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    local.get 1
                                                                    local.get 2
                                                                    local.get 3
                                                                    call $_reflect.Value_.Kind
                                                                    br_table 0 (;@32;) 5 (;@27;) 6 (;@26;) 6 (;@26;) 6 (;@26;) 6 (;@26;) 6 (;@26;) 7 (;@25;) 7 (;@25;) 7 (;@25;) 7 (;@25;) 7 (;@25;) 7 (;@25;) 8 (;@24;) 9 (;@23;) 10 (;@22;) 11 (;@21;) 12 (;@20;) 17 (;@15;) 17 (;@15;) 15 (;@17;) 2 (;@30;) 1 (;@31;) 1 (;@31;) 17 (;@15;) 13 (;@19;) 14 (;@18;) 18 (;@14;)
                                                                  end
                                                                  local.get 5
                                                                  i32.eqz
                                                                  br_if 2 (;@29;)
                                                                  local.get 4
                                                                  i32.const 118
                                                                  i32.eq
                                                                  br_if 3 (;@28;)
                                                                  local.get 0
                                                                  local.get 4
                                                                  call $_*fmt.pp_.badVerb
                                                                  br 29 (;@2;)
                                                                end
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    local.get 4
                                                                    i32.const -113
                                                                    i32.add
                                                                    br_table 1 (;@31;) 16 (;@16;) 1 (;@31;) 0 (;@32;)
                                                                  end
                                                                  local.get 4
                                                                  i32.const 88
                                                                  i32.eq
                                                                  br_if 0 (;@31;)
                                                                  local.get 4
                                                                  i32.const 120
                                                                  i32.ne
                                                                  br_if 15 (;@16;)
                                                                end
                                                                local.get 1
                                                                local.get 2
                                                                local.get 3
                                                                call $_reflect.Value_.Type
                                                                local.tee 8
                                                                call $_reflect.Type_.Elem
                                                                call $_reflect.Type_.Kind
                                                                i32.const 8
                                                                i32.ne
                                                                br_if 14 (;@16;)
                                                                local.get 8
                                                                local.get 2
                                                                local.get 3
                                                                call $_reflect.Value_.Kind
                                                                i32.const 22
                                                                i32.eq
                                                                br_if 18 (;@12;)
                                                                local.get 6
                                                                i32.const 468
                                                                i32.add
                                                                local.get 6
                                                                i32.const 280
                                                                i32.add
                                                                i32.store
                                                                local.get 6
                                                                i32.const 288
                                                                i32.add
                                                                i32.const 0
                                                                i32.store8
                                                                local.get 6
                                                                i64.const 0
                                                                i64.store offset=280
                                                                i32.const 34
                                                                i32.const 66152
                                                                call $runtime._panic
                                                                unreachable
                                                              end
                                                              local.get 5
                                                              br_if 14 (;@15;)
                                                              local.get 1
                                                              local.get 2
                                                              local.get 3
                                                              call $_reflect.Value_.Pointer
                                                              i32.eqz
                                                              br_if 14 (;@15;)
                                                              local.get 6
                                                              i32.const 328
                                                              i32.add
                                                              local.get 6
                                                              i32.load offset=204
                                                              local.tee 2
                                                              i32.store
                                                              local.get 6
                                                              i64.const 0
                                                              i64.store offset=248
                                                              local.get 6
                                                              i32.const 0
                                                              i32.store8 offset=256
                                                              local.get 6
                                                              i32.const 324
                                                              i32.add
                                                              local.get 6
                                                              i32.const 248
                                                              i32.add
                                                              i32.store
                                                              local.get 6
                                                              i32.const 160
                                                              i32.add
                                                              local.get 6
                                                              i32.load offset=200
                                                              local.tee 1
                                                              local.get 2
                                                              local.get 6
                                                              i32.load8_u offset=208
                                                              local.tee 3
                                                              call $_reflect.Value_.Elem
                                                              local.get 6
                                                              i32.const 480
                                                              i32.add
                                                              local.get 6
                                                              i32.load offset=164
                                                              local.tee 5
                                                              i32.store
                                                              local.get 6
                                                              i32.const 336
                                                              i32.add
                                                              local.get 5
                                                              i32.store
                                                              local.get 6
                                                              i32.const 332
                                                              i32.add
                                                              local.get 5
                                                              i32.store
                                                              local.get 6
                                                              local.get 6
                                                              i32.load8_u offset=168
                                                              local.tee 8
                                                              i32.store8 offset=256
                                                              local.get 6
                                                              local.get 5
                                                              i32.store offset=252
                                                              local.get 6
                                                              local.get 6
                                                              i32.load offset=160
                                                              local.tee 9
                                                              i32.store offset=248
                                                              local.get 9
                                                              local.get 5
                                                              local.get 8
                                                              call $_reflect.Value_.Kind
                                                              local.tee 10
                                                              i32.const 26
                                                              i32.gt_u
                                                              br_if 14 (;@15;)
                                                              i32.const 1
                                                              local.get 10
                                                              i32.shl
                                                              i32.const 113246208
                                                              i32.and
                                                              i32.eqz
                                                              br_if 14 (;@15;)
                                                              local.get 0
                                                              i32.const 38
                                                              call $_*fmt.buffer_.writeByte
                                                              local.get 0
                                                              local.get 9
                                                              local.get 5
                                                              local.get 8
                                                              local.get 4
                                                              i32.const 1
                                                              call $_*fmt.pp_.printValue
                                                              i32.const 0
                                                              local.get 7
                                                              i32.store offset=83624
                                                              local.get 6
                                                              i32.const 496
                                                              i32.add
                                                              global.set 0
                                                              return
                                                            end
                                                            local.get 0
                                                            i32.const 71808
                                                            i32.const 23
                                                            call $_*fmt.buffer_.writeString
                                                            br 26 (;@2;)
                                                          end
                                                          local.get 0
                                                          i32.const 71842
                                                          i32.const 5
                                                          call $_*fmt.buffer_.writeString
                                                          br 25 (;@2;)
                                                        end
                                                        local.get 0
                                                        local.get 1
                                                        local.get 2
                                                        local.get 3
                                                        call $_reflect.Value_.Bool
                                                        local.get 4
                                                        call $_*fmt.pp_.fmtBool
                                                        br 24 (;@2;)
                                                      end
                                                      local.get 0
                                                      local.get 1
                                                      local.get 2
                                                      local.get 3
                                                      call $_reflect.Value_.Int
                                                      i32.const 1
                                                      local.get 4
                                                      call $_*fmt.pp_.fmtInteger
                                                      br 23 (;@2;)
                                                    end
                                                    local.get 0
                                                    local.get 1
                                                    local.get 2
                                                    local.get 3
                                                    call $_reflect.Value_.Uint
                                                    i32.const 0
                                                    local.get 4
                                                    call $_*fmt.pp_.fmtInteger
                                                    br 22 (;@2;)
                                                  end
                                                  local.get 0
                                                  local.get 1
                                                  local.get 2
                                                  local.get 3
                                                  call $_reflect.Value_.Float
                                                  i32.const 32
                                                  local.get 4
                                                  call $_*fmt.pp_.fmtFloat
                                                  br 21 (;@2;)
                                                end
                                                local.get 0
                                                local.get 1
                                                local.get 2
                                                local.get 3
                                                call $_reflect.Value_.Float
                                                i32.const 64
                                                local.get 4
                                                call $_*fmt.pp_.fmtFloat
                                                br 20 (;@2;)
                                              end
                                              local.get 6
                                              local.get 1
                                              local.get 2
                                              local.get 3
                                              call $_reflect.Value_.Complex
                                              local.get 0
                                              local.get 6
                                              f64.load
                                              local.get 6
                                              f64.load offset=8
                                              i32.const 64
                                              local.get 4
                                              call $_*fmt.pp_.fmtComplex
                                              br 19 (;@2;)
                                            end
                                            local.get 6
                                            i32.const 16
                                            i32.add
                                            local.get 1
                                            local.get 2
                                            local.get 3
                                            call $_reflect.Value_.Complex
                                            local.get 0
                                            local.get 6
                                            f64.load offset=16
                                            local.get 6
                                            f64.load offset=24
                                            i32.const 128
                                            local.get 4
                                            call $_*fmt.pp_.fmtComplex
                                            br 18 (;@2;)
                                          end
                                          local.get 6
                                          i32.const 32
                                          i32.add
                                          local.get 1
                                          local.get 2
                                          local.get 3
                                          call $_reflect.Value_.String
                                          local.get 6
                                          i32.const 348
                                          i32.add
                                          local.get 6
                                          i32.load offset=32
                                          local.tee 2
                                          i32.store
                                          local.get 0
                                          local.get 2
                                          local.get 6
                                          i32.load offset=36
                                          local.get 4
                                          call $_*fmt.pp_.fmtString
                                          br 17 (;@2;)
                                        end
                                        block  ;; label = @19
                                          local.get 0
                                          i32.const 44
                                          i32.add
                                          i32.load8_u
                                          i32.eqz
                                          br_if 0 (;@19;)
                                          local.get 1
                                          local.get 2
                                          local.get 3
                                          call $_reflect.Value_.Type
                                          local.set 8
                                          local.get 0
                                          i32.const 66056
                                          i32.const 1
                                          call $_*fmt.buffer_.writeString
                                          local.get 8
                                          local.get 2
                                          local.get 3
                                          call $_reflect.Value_.IsNil
                                          i32.const 1
                                          i32.and
                                          br_if 6 (;@13;)
                                          local.get 0
                                          i32.const 123
                                          call $_*fmt.buffer_.writeByte
                                          br 10 (;@9;)
                                        end
                                        local.get 0
                                        i32.const 71831
                                        i32.const 4
                                        call $_*fmt.buffer_.writeString
                                        br 9 (;@9;)
                                      end
                                      block  ;; label = @18
                                        local.get 0
                                        i32.const 44
                                        i32.add
                                        i32.load8_u
                                        i32.eqz
                                        br_if 0 (;@18;)
                                        local.get 1
                                        local.get 2
                                        local.get 3
                                        call $_reflect.Value_.Type
                                        drop
                                        local.get 0
                                        i32.const 66056
                                        i32.const 1
                                        call $_*fmt.buffer_.writeString
                                      end
                                      local.get 0
                                      i32.const 123
                                      call $_*fmt.buffer_.writeByte
                                      local.get 6
                                      i32.const 420
                                      i32.add
                                      local.get 6
                                      i32.const 264
                                      i32.add
                                      i32.store
                                      local.get 6
                                      i32.const 424
                                      i32.add
                                      local.get 6
                                      i32.const 280
                                      i32.add
                                      i32.store
                                      local.get 5
                                      i32.const 1
                                      i32.add
                                      local.set 11
                                      local.get 6
                                      i32.const 416
                                      i32.add
                                      local.set 12
                                      local.get 6
                                      i32.const 412
                                      i32.add
                                      local.set 13
                                      local.get 6
                                      i32.const 408
                                      i32.add
                                      local.set 14
                                      local.get 6
                                      i32.const 440
                                      i32.add
                                      local.set 15
                                      local.get 6
                                      i32.const 436
                                      i32.add
                                      local.set 16
                                      local.get 6
                                      i32.const 432
                                      i32.add
                                      local.set 17
                                      local.get 6
                                      i32.const 428
                                      i32.add
                                      local.set 18
                                      local.get 6
                                      i32.const 444
                                      i32.add
                                      local.set 19
                                      local.get 6
                                      i32.const 448
                                      i32.add
                                      local.set 20
                                      local.get 6
                                      i32.const 452
                                      i32.add
                                      local.set 21
                                      i32.const 0
                                      local.set 8
                                      br 13 (;@4;)
                                    end
                                    local.get 6
                                    i32.const 460
                                    i32.add
                                    local.get 6
                                    i32.load offset=204
                                    local.tee 3
                                    i32.store
                                    local.get 6
                                    i32.const 312
                                    i32.add
                                    local.get 3
                                    i32.store
                                    local.get 6
                                    i64.const 0
                                    i64.store offset=232
                                    local.get 6
                                    i32.const 0
                                    i32.store8 offset=240
                                    local.get 6
                                    i32.const 308
                                    i32.add
                                    local.get 6
                                    i32.const 232
                                    i32.add
                                    i32.store
                                    local.get 6
                                    i32.const 112
                                    i32.add
                                    local.get 6
                                    i32.load offset=200
                                    local.tee 9
                                    local.get 3
                                    local.get 6
                                    i32.load8_u offset=208
                                    local.tee 10
                                    call $_reflect.Value_.Elem
                                    local.get 6
                                    i32.const 456
                                    i32.add
                                    local.get 6
                                    i32.load offset=116
                                    local.tee 2
                                    i32.store
                                    local.get 6
                                    i32.const 296
                                    i32.add
                                    i32.const 24
                                    i32.add
                                    local.get 2
                                    i32.store
                                    local.get 6
                                    i32.const 316
                                    i32.add
                                    local.get 2
                                    i32.store
                                    local.get 6
                                    local.get 6
                                    i32.load8_u offset=120
                                    local.tee 8
                                    i32.store8 offset=240
                                    local.get 6
                                    local.get 2
                                    i32.store offset=236
                                    local.get 6
                                    local.get 6
                                    i32.load offset=112
                                    local.tee 1
                                    i32.store offset=232
                                    local.get 1
                                    local.get 2
                                    local.get 8
                                    call $_reflect.Value_.IsValid
                                    i32.const 1
                                    i32.and
                                    br_if 6 (;@10;)
                                    block  ;; label = @17
                                      local.get 0
                                      i32.const 44
                                      i32.add
                                      i32.load8_u
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      local.get 9
                                      local.get 3
                                      local.get 10
                                      call $_reflect.Value_.Type
                                      drop
                                      local.get 0
                                      i32.const 66056
                                      i32.const 1
                                      call $_*fmt.buffer_.writeString
                                      local.get 0
                                      i32.const 71835
                                      i32.const 5
                                      call $_*fmt.buffer_.writeString
                                      br 15 (;@2;)
                                    end
                                    local.get 0
                                    i32.const 71842
                                    i32.const 5
                                    call $_*fmt.buffer_.writeString
                                    br 14 (;@2;)
                                  end
                                  local.get 0
                                  i32.const 44
                                  i32.add
                                  i32.load8_u
                                  i32.eqz
                                  br_if 9 (;@6;)
                                  local.get 1
                                  local.get 2
                                  local.get 3
                                  call $_reflect.Value_.Type
                                  local.set 8
                                  local.get 0
                                  i32.const 66056
                                  i32.const 1
                                  call $_*fmt.buffer_.writeString
                                  block  ;; label = @16
                                    local.get 8
                                    local.get 2
                                    local.get 3
                                    call $_reflect.Value_.Kind
                                    i32.const 22
                                    i32.ne
                                    br_if 0 (;@16;)
                                    local.get 8
                                    local.get 2
                                    local.get 3
                                    call $_reflect.Value_.IsNil
                                    i32.const 1
                                    i32.and
                                    br_if 5 (;@11;)
                                  end
                                  local.get 0
                                  i32.const 123
                                  call $_*fmt.buffer_.writeByte
                                  local.get 5
                                  i32.const 1
                                  i32.add
                                  local.set 9
                                  i32.const 0
                                  local.set 1
                                  local.get 6
                                  i32.const 472
                                  i32.add
                                  local.set 10
                                  br 10 (;@5;)
                                end
                                local.get 6
                                i32.const 484
                                i32.add
                                local.get 2
                                i32.store
                                local.get 0
                                local.get 1
                                local.get 2
                                local.get 3
                                local.get 4
                                call $_*fmt.pp_.fmtPointer
                                br 12 (;@2;)
                              end
                              local.get 6
                              i32.const 488
                              i32.add
                              local.get 6
                              i32.const 280
                              i32.add
                              i32.store
                              local.get 6
                              i64.const 0
                              i64.store offset=280
                              local.get 6
                              local.get 3
                              i32.store8 offset=288
                              local.get 6
                              local.get 2
                              i32.store offset=284
                              local.get 6
                              local.get 1
                              i32.store offset=280
                              block  ;; label = @14
                                local.get 1
                                local.get 2
                                local.get 3
                                call $_reflect.Value_.IsValid
                                i32.const 1
                                i32.and
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 0
                                i32.const 63
                                call $_*fmt.buffer_.writeByte
                                local.get 1
                                local.get 2
                                local.get 3
                                call $_reflect.Value_.Type
                                drop
                                local.get 0
                                i32.const 66056
                                i32.const 1
                                call $_*fmt.buffer_.writeString
                                local.get 0
                                i32.const 63
                                call $_*fmt.buffer_.writeByte
                                br 12 (;@2;)
                              end
                              local.get 0
                              i32.const 71842
                              i32.const 5
                              call $_*fmt.buffer_.writeString
                              br 11 (;@2;)
                            end
                            local.get 0
                            i32.const 71835
                            i32.const 5
                            call $_*fmt.buffer_.writeString
                            i32.const 0
                            local.get 7
                            i32.store offset=83624
                            local.get 6
                            i32.const 496
                            i32.add
                            global.set 0
                            return
                          end
                          local.get 6
                          i32.const 464
                          i32.add
                          local.get 6
                          i32.const 280
                          i32.add
                          i32.store
                          local.get 6
                          i32.const 288
                          i32.add
                          i32.const 0
                          i32.store8
                          local.get 6
                          i64.const 0
                          i64.store offset=280
                          i32.const 34
                          i32.const 66104
                          call $runtime._panic
                          unreachable
                        end
                        local.get 0
                        i32.const 71835
                        i32.const 5
                        call $_*fmt.buffer_.writeString
                        i32.const 0
                        local.get 7
                        i32.store offset=83624
                        local.get 6
                        i32.const 496
                        i32.add
                        global.set 0
                        return
                      end
                      local.get 0
                      local.get 1
                      local.get 2
                      local.get 8
                      local.get 4
                      local.get 5
                      i32.const 1
                      i32.add
                      call $_*fmt.pp_.printValue
                      br 7 (;@2;)
                    end
                    local.get 6
                    i32.const 352
                    i32.add
                    local.get 6
                    i32.const 280
                    i32.add
                    i32.store
                    local.get 6
                    i64.const 0
                    i64.store offset=280
                    local.get 6
                    local.get 3
                    i32.store8 offset=288
                    local.get 6
                    local.get 2
                    i32.store offset=284
                    local.get 6
                    local.get 1
                    i32.store offset=280
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        local.get 2
                        local.get 3
                        call $_reflect.Value_.Type
                        local.tee 1
                        call $_reflect.Type_.Kind
                        i32.const 25
                        i32.eq
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 8
                        br 1 (;@9;)
                      end
                      local.get 1
                      local.get 2
                      local.get 3
                      call $_reflect.Value_.Len
                      local.tee 9
                      i32.const -1
                      i32.le_s
                      br_if 2 (;@7;)
                      local.get 6
                      i32.const 356
                      i32.add
                      local.get 9
                      i32.const 12
                      i32.mul
                      local.tee 8
                      call $runtime.alloc
                      local.tee 10
                      i32.store
                      local.get 6
                      i32.const 368
                      i32.add
                      local.get 10
                      i32.store
                      local.get 6
                      i32.const 360
                      i32.add
                      local.get 8
                      call $runtime.alloc
                      local.tee 11
                      i32.store
                      local.get 6
                      i32.const 364
                      i32.add
                      local.get 11
                      i32.store
                      local.get 1
                      local.get 2
                      local.get 3
                      call $_reflect.Value_.MapRange
                      call $_*reflect.MapIter_.Next
                      local.get 6
                      i32.const 372
                      i32.add
                      i32.const 24
                      call $runtime.alloc
                      local.tee 8
                      i32.store
                      local.get 6
                      i32.const 376
                      i32.add
                      local.get 8
                      i32.store
                      local.get 8
                      local.get 9
                      i32.store offset=20
                      local.get 8
                      i32.const 0
                      i32.store offset=16
                      local.get 8
                      local.get 11
                      i32.store offset=12
                      local.get 8
                      local.get 9
                      i32.store offset=8
                      local.get 8
                      i32.const 0
                      i32.store offset=4
                      local.get 8
                      local.get 10
                      i32.store
                      local.get 8
                      call $sort.Stable
                    end
                    local.get 6
                    i32.const 380
                    i32.add
                    local.get 8
                    i32.store
                    i32.const 0
                    local.set 3
                    local.get 6
                    i32.const 224
                    i32.add
                    i32.const 0
                    i32.store8
                    local.get 6
                    i64.const 0
                    i64.store offset=216
                    local.get 6
                    i32.const 384
                    i32.add
                    local.get 6
                    i32.const 216
                    i32.add
                    i32.store
                    local.get 8
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 6
                    i32.const 388
                    i32.add
                    local.get 8
                    i32.load
                    local.tee 20
                    i32.store
                    local.get 8
                    i32.load offset=4
                    local.tee 17
                    i32.const 0
                    local.get 17
                    i32.const 0
                    i32.gt_s
                    select
                    local.set 18
                    local.get 5
                    i32.const 1
                    i32.add
                    local.set 11
                    local.get 6
                    i32.const 392
                    i32.add
                    local.set 21
                    local.get 6
                    i32.const 396
                    i32.add
                    local.set 12
                    local.get 6
                    i32.const 400
                    i32.add
                    local.set 13
                    local.get 6
                    i32.const 404
                    i32.add
                    local.set 14
                    i32.const 0
                    local.set 2
                    i32.const 0
                    local.set 9
                    i32.const 0
                    local.set 1
                    i32.const 0
                    local.set 10
                    br 5 (;@3;)
                  end
                  call $runtime.nilPanic
                  unreachable
                end
                call $runtime.slicePanic
                unreachable
              end
              local.get 0
              i32.const 91
              call $_*fmt.buffer_.writeByte
              local.get 5
              i32.const 1
              i32.add
              local.set 9
              i32.const 0
              local.set 5
              local.get 6
              i32.const 476
              i32.add
              local.set 10
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 5
                  local.get 1
                  local.get 2
                  local.get 3
                  call $_reflect.Value_.Len
                  i32.ge_s
                  br_if 1 (;@6;)
                  block  ;; label = @8
                    local.get 5
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 32
                    call $_*fmt.buffer_.writeByte
                  end
                  local.get 6
                  i32.const 144
                  i32.add
                  local.get 1
                  local.get 2
                  local.get 3
                  local.get 5
                  call $_reflect.Value_.Index
                  local.get 10
                  local.get 6
                  i32.load offset=148
                  local.tee 8
                  i32.store
                  local.get 0
                  local.get 6
                  i32.load offset=144
                  local.get 8
                  local.get 6
                  i32.load8_u offset=152
                  local.get 4
                  local.get 9
                  call $_*fmt.pp_.printValue
                  local.get 5
                  i32.const 1
                  i32.add
                  local.set 5
                  br 0 (;@7;)
                end
              end
              local.get 0
              i32.const 93
              call $_*fmt.buffer_.writeByte
              br 3 (;@2;)
            end
            block  ;; label = @5
              loop  ;; label = @6
                local.get 1
                local.get 8
                local.get 2
                local.get 3
                call $_reflect.Value_.Len
                i32.ge_s
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 1
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 71840
                  i32.const 2
                  call $_*fmt.buffer_.writeString
                end
                local.get 6
                i32.const 128
                i32.add
                local.get 8
                local.get 2
                local.get 3
                local.get 1
                call $_reflect.Value_.Index
                local.get 10
                local.get 6
                i32.load offset=132
                local.tee 5
                i32.store
                local.get 0
                local.get 6
                i32.load offset=128
                local.get 5
                local.get 6
                i32.load8_u offset=136
                local.get 4
                local.get 9
                call $_*fmt.pp_.printValue
                local.get 1
                i32.const 1
                i32.add
                local.set 1
                br 0 (;@6;)
              end
            end
            local.get 0
            i32.const 125
            call $_*fmt.buffer_.writeByte
            br 2 (;@2;)
          end
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 8
                  local.get 1
                  local.get 2
                  local.get 3
                  call $_reflect.Value_.NumField
                  i32.ge_s
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 8
                    i32.eqz
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u offset=44
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 71840
                      i32.const 2
                      call $_*fmt.buffer_.writeString
                      br 1 (;@8;)
                    end
                    local.get 0
                    i32.const 32
                    call $_*fmt.buffer_.writeByte
                  end
                  local.get 0
                  i32.load8_u offset=43
                  br_if 1 (;@6;)
                  local.get 0
                  i32.load8_u offset=44
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
                local.get 0
                i32.const 125
                call $_*fmt.buffer_.writeByte
                br 4 (;@2;)
              end
              local.get 6
              i32.const 72
              i32.add
              local.get 1
              local.get 2
              local.get 3
              call $_reflect.Value_.Type
              local.get 8
              call $_reflect.Type_.Field
              local.get 12
              local.get 6
              i32.load offset=92
              i32.store
              local.get 13
              local.get 6
              i32.load offset=80
              i32.store
              local.get 14
              local.get 6
              i32.load offset=72
              local.tee 5
              i32.store
              local.get 5
              local.get 6
              i32.load offset=76
              local.tee 9
              i32.const 72144
              i32.const 0
              call $runtime.stringEqual
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 0
              local.get 5
              local.get 9
              call $_*fmt.buffer_.writeString
              local.get 0
              i32.const 58
              call $_*fmt.buffer_.writeByte
            end
            local.get 6
            i32.const 264
            i32.add
            i32.const 8
            i32.add
            local.get 3
            i32.store8
            local.get 6
            i32.const 280
            i32.add
            i32.const 8
            i32.add
            local.tee 10
            i32.const 0
            i32.store8
            local.get 6
            i64.const 0
            i64.store offset=264
            local.get 6
            i64.const 0
            i64.store offset=280
            local.get 6
            local.get 2
            i32.store offset=268
            local.get 6
            local.get 1
            i32.store offset=264
            local.get 6
            i32.const 56
            i32.add
            local.get 1
            local.get 2
            local.get 3
            local.get 8
            call $_reflect.Value_.Field
            local.get 15
            local.get 6
            i32.load offset=60
            local.tee 5
            i32.store
            local.get 16
            local.get 5
            i32.store
            local.get 17
            local.get 5
            i32.store
            local.get 18
            local.get 5
            i32.store
            local.get 10
            local.get 6
            i32.load8_u offset=64
            local.tee 9
            i32.store8
            local.get 6
            local.get 5
            i32.store offset=284
            local.get 6
            local.get 6
            i32.load offset=56
            local.tee 10
            i32.store offset=280
            block  ;; label = @5
              local.get 10
              local.get 5
              local.get 9
              call $_reflect.Value_.Kind
              i32.const 20
              i32.ne
              br_if 0 (;@5;)
              local.get 10
              local.get 5
              local.get 9
              call $_reflect.Value_.IsNil
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 6
              i32.const 40
              i32.add
              local.get 10
              local.get 5
              local.get 9
              call $_reflect.Value_.Elem
              local.get 19
              local.get 6
              i32.load offset=44
              local.tee 5
              i32.store
              local.get 6
              local.get 6
              i32.load8_u offset=48
              local.tee 9
              i32.store8 offset=288
              local.get 6
              local.get 5
              i32.store offset=284
              local.get 6
              local.get 6
              i32.load offset=40
              local.tee 10
              i32.store offset=280
            end
            local.get 20
            local.get 5
            i32.store
            local.get 21
            local.get 5
            i32.store
            local.get 0
            local.get 10
            local.get 5
            local.get 9
            local.get 4
            local.get 11
            call $_*fmt.pp_.printValue
            local.get 8
            i32.const 1
            i32.add
            local.set 8
            br 0 (;@4;)
          end
        end
        block  ;; label = @3
          loop  ;; label = @4
            local.get 18
            local.get 2
            i32.eq
            br_if 1 (;@3;)
            local.get 17
            local.get 2
            i32.eq
            br_if 3 (;@1;)
            local.get 20
            local.get 3
            i32.add
            local.tee 1
            i32.load8_u offset=8
            local.set 9
            local.get 1
            i32.load
            local.set 10
            local.get 21
            local.get 1
            i32.load offset=4
            local.tee 1
            i32.store
            local.get 12
            local.get 1
            i32.store
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 0
                i32.load8_u offset=44
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 71840
                i32.const 2
                call $_*fmt.buffer_.writeString
                br 1 (;@5;)
              end
              local.get 0
              i32.const 32
              call $_*fmt.buffer_.writeByte
            end
            local.get 0
            local.get 10
            local.get 1
            local.get 9
            local.get 4
            local.get 11
            call $_*fmt.pp_.printValue
            local.get 0
            i32.const 58
            call $_*fmt.buffer_.writeByte
            local.get 13
            local.get 8
            i32.load offset=12
            local.tee 5
            i32.store
            local.get 2
            local.get 8
            i32.load offset=16
            i32.ge_u
            br_if 3 (;@1;)
            local.get 5
            local.get 3
            i32.add
            local.tee 5
            i32.load8_u offset=8
            local.set 15
            local.get 5
            i32.load
            local.set 16
            local.get 14
            local.get 5
            i32.load offset=4
            local.tee 5
            i32.store
            local.get 0
            local.get 16
            local.get 5
            local.get 15
            local.get 4
            local.get 11
            call $_*fmt.pp_.printValue
            local.get 3
            i32.const 12
            i32.add
            local.set 3
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            br 0 (;@4;)
          end
        end
        local.get 6
        local.get 9
        i32.store8 offset=224
        local.get 6
        local.get 1
        i32.store offset=220
        local.get 6
        local.get 10
        i32.store offset=216
        block  ;; label = @3
          local.get 0
          i32.load8_u offset=44
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 125
          call $_*fmt.buffer_.writeByte
          br 1 (;@2;)
        end
        local.get 0
        i32.const 93
        call $_*fmt.buffer_.writeByte
      end
      i32.const 0
      local.get 7
      i32.store offset=83624
      local.get 6
      i32.const 496
      i32.add
      global.set 0
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $_*fmt.pp_.catchPanic (type 3))
  (func $_*fmt.pp_.fmt0x64 (type 26) (param i32 i64 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 0
    i32.const 40
    i32.add
    local.tee 3
    i32.load8_u
    local.set 4
    local.get 3
    local.get 2
    i32.const 1
    i32.and
    i32.store8
    local.get 0
    i32.const 32
    i32.add
    local.get 1
    i32.const 16
    i32.const 0
    i32.const 118
    i32.const 71760
    call $_*fmt.fmt_.fmtInteger
    local.get 3
    local.get 4
    i32.const 1
    i32.and
    i32.store8)
  (func $_*fmt.fmt_.fmtInteger (type 27) (param i32 i64 i32 i32 i32 i32)
    (local i32 i32 i64 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 6
    global.set 0
    local.get 6
    i32.const 0
    i32.store offset=12
    local.get 6
    i64.const 2
    i64.store offset=4 align=4
    i32.const 0
    i32.load offset=83624
    local.set 7
    i32.const 0
    local.get 6
    i32.store offset=83624
    local.get 6
    local.get 7
    i32.store
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    i64.const 0
    local.get 1
    i64.sub
    local.set 8
    local.get 1
    i64.const 0
    i64.lt_s
    local.get 3
    i32.and
    local.set 9
    local.get 0
    i32.const 24
    i32.add
    local.set 10
    i32.const 68
    local.set 11
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=4
        br_if 0 (;@2;)
        local.get 0
        i32.const 5
        i32.add
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 0
      i32.load offset=16
      local.get 0
      i32.load offset=20
      i32.add
      i32.const 3
      i32.add
      local.tee 3
      i32.const 69
      i32.lt_s
      br_if 0 (;@1;)
      local.get 6
      i32.const 12
      i32.add
      local.get 3
      call $runtime.alloc
      local.tee 10
      i32.store
      local.get 3
      local.set 11
    end
    local.get 8
    local.get 1
    local.get 9
    select
    local.set 1
    local.get 6
    i32.const 8
    i32.add
    local.get 10
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 5
        i32.add
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=20
        local.set 12
        local.get 1
        i64.const 0
        i64.ne
        br_if 1 (;@1;)
        local.get 12
        br_if 1 (;@1;)
        local.get 0
        i32.const 10
        i32.add
        local.tee 3
        i32.load8_u
        local.set 11
        local.get 3
        i32.const 0
        i32.store8
        local.get 0
        local.get 0
        i32.load offset=16
        call $_*fmt.fmt_.writePadding
        i32.const 0
        local.get 7
        i32.store offset=83624
        local.get 3
        local.get 11
        i32.const 1
        i32.and
        i32.store8
        local.get 6
        i32.const 16
        i32.add
        global.set 0
        return
      end
      i32.const 0
      local.set 12
      local.get 0
      i32.const 10
      i32.add
      i32.load8_u
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load8_u offset=4
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=16
      local.set 12
      block  ;; label = @2
        local.get 9
        br_if 0 (;@2;)
        local.get 0
        i32.const 7
        i32.add
        i32.load8_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 9
        i32.add
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 12
      i32.const -1
      i32.add
      local.set 12
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const -2
                  i32.add
                  i32.const 31
                  i32.rotl
                  br_table 1 (;@6;) 0 (;@7;) 0 (;@7;) 2 (;@5;) 4 (;@3;) 0 (;@7;) 0 (;@7;) 3 (;@4;) 0 (;@7;)
                end
                i32.const 34
                i32.const 71952
                call $runtime._panic
                unreachable
              end
              local.get 10
              i32.const -1
              i32.add
              local.set 13
              local.get 11
              local.set 3
              loop  ;; label = @6
                local.get 1
                i64.const 2
                i64.lt_u
                br_if 4 (;@2;)
                local.get 3
                i32.const -1
                i32.add
                local.tee 14
                local.get 11
                i32.ge_u
                br_if 5 (;@1;)
                local.get 13
                local.get 3
                i32.add
                local.get 1
                i32.wrap_i64
                i32.const 1
                i32.and
                i32.const 48
                i32.or
                i32.store8
                local.get 1
                i64.const 1
                i64.shr_u
                local.set 1
                local.get 14
                local.set 3
                br 0 (;@6;)
              end
            end
            local.get 10
            i32.const -1
            i32.add
            local.set 13
            local.get 11
            local.set 3
            loop  ;; label = @5
              local.get 1
              i64.const 8
              i64.lt_u
              br_if 3 (;@2;)
              local.get 3
              i32.const -1
              i32.add
              local.tee 14
              local.get 11
              i32.ge_u
              br_if 4 (;@1;)
              local.get 13
              local.get 3
              i32.add
              local.get 1
              i32.wrap_i64
              i32.const 7
              i32.and
              i32.const 48
              i32.or
              i32.store8
              local.get 1
              i64.const 3
              i64.shr_u
              local.set 1
              local.get 14
              local.set 3
              br 0 (;@5;)
            end
          end
          local.get 10
          i32.const -1
          i32.add
          local.set 13
          local.get 11
          local.set 3
          loop  ;; label = @4
            local.get 1
            i64.const 16
            i64.lt_u
            br_if 2 (;@2;)
            local.get 3
            i32.const -1
            i32.add
            local.tee 14
            local.get 11
            i32.ge_u
            br_if 3 (;@1;)
            local.get 13
            local.get 3
            i32.add
            local.get 5
            local.get 1
            i32.wrap_i64
            i32.const 15
            i32.and
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i64.const 4
            i64.shr_u
            local.set 1
            local.get 14
            local.set 3
            br 0 (;@4;)
          end
        end
        local.get 10
        i32.const -1
        i32.add
        local.set 13
        local.get 11
        local.set 3
        loop  ;; label = @3
          local.get 1
          i64.const 10
          i64.lt_u
          br_if 1 (;@2;)
          local.get 1
          i64.const 10
          i64.div_u
          local.set 8
          local.get 3
          i32.const -1
          i32.add
          local.tee 14
          local.get 11
          i32.ge_u
          br_if 2 (;@1;)
          local.get 13
          local.get 3
          i32.add
          local.get 1
          local.get 8
          i64.const -10
          i64.mul
          i64.add
          i64.const 48
          i64.add
          i64.store8
          local.get 8
          local.set 1
          local.get 14
          local.set 3
          br 0 (;@3;)
        end
      end
      local.get 3
      i32.const -1
      i32.add
      local.tee 14
      local.get 11
      i32.ge_u
      br_if 0 (;@1;)
      local.get 10
      local.get 14
      i32.add
      local.get 5
      local.get 1
      i32.wrap_i64
      i32.add
      i32.load8_u
      local.tee 13
      i32.store8
      i32.const 1
      local.get 3
      i32.sub
      local.set 14
      local.get 3
      i32.const -3
      i32.add
      local.set 3
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.const 2
          i32.add
          i32.const 1
          i32.lt_s
          br_if 1 (;@2;)
          local.get 12
          local.get 11
          local.get 14
          i32.add
          i32.le_s
          br_if 1 (;@2;)
          local.get 3
          i32.const 1
          i32.add
          local.get 11
          i32.ge_u
          br_if 2 (;@1;)
          i32.const 48
          local.set 13
          local.get 10
          local.get 3
          i32.add
          i32.const 1
          i32.add
          i32.const 48
          i32.store8
          local.get 14
          i32.const 1
          i32.add
          local.set 14
          local.get 3
          i32.const -1
          i32.add
          local.set 3
          br 0 (;@3;)
        end
      end
      local.get 3
      i32.const 2
      i32.add
      local.set 14
      block  ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 2
            i32.eq
            br_if 0 (;@4;)
            local.get 2
            i32.const 8
            i32.eq
            br_if 1 (;@3;)
            local.get 2
            i32.const 16
            i32.ne
            br_if 2 (;@2;)
            local.get 3
            i32.const 1
            i32.add
            local.get 11
            i32.ge_u
            br_if 3 (;@1;)
            local.get 10
            local.get 3
            i32.add
            local.tee 14
            i32.const 1
            i32.add
            local.get 5
            i32.load8_u offset=16
            i32.store8
            local.get 3
            local.get 11
            i32.ge_u
            br_if 3 (;@1;)
            local.get 14
            i32.const 48
            i32.store8
            local.get 3
            local.set 14
            br 2 (;@2;)
          end
          local.get 3
          i32.const 1
          i32.add
          local.get 11
          i32.ge_u
          br_if 2 (;@1;)
          local.get 10
          local.get 3
          i32.add
          local.tee 14
          i32.const 1
          i32.add
          i32.const 98
          i32.store8
          local.get 3
          local.get 11
          i32.ge_u
          br_if 2 (;@1;)
          local.get 14
          i32.const 48
          i32.store8
          local.get 3
          local.set 14
          br 1 (;@2;)
        end
        local.get 11
        local.get 14
        i32.le_u
        br_if 1 (;@1;)
        local.get 13
        i32.const 255
        i32.and
        i32.const 48
        i32.eq
        br_if 0 (;@2;)
        local.get 3
        i32.const 1
        i32.add
        local.tee 14
        local.get 11
        i32.ge_u
        br_if 1 (;@1;)
        local.get 10
        local.get 3
        i32.add
        i32.const 1
        i32.add
        i32.const 48
        i32.store8
      end
      block  ;; label = @2
        local.get 4
        i32.const 79
        i32.ne
        br_if 0 (;@2;)
        local.get 14
        i32.const -1
        i32.add
        local.tee 3
        local.get 11
        i32.ge_u
        br_if 1 (;@1;)
        local.get 10
        local.get 3
        i32.add
        i32.const 111
        i32.store8
        local.get 14
        i32.const -2
        i32.add
        local.tee 14
        local.get 11
        i32.ge_u
        br_if 1 (;@1;)
        local.get 10
        local.get 14
        i32.add
        i32.const 48
        i32.store8
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 9
            i32.eqz
            br_if 0 (;@4;)
            i32.const 45
            local.set 3
            local.get 14
            i32.const -1
            i32.add
            local.tee 14
            local.get 11
            i32.ge_u
            br_if 3 (;@1;)
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 0
            i32.const 7
            i32.add
            i32.load8_u
            i32.eqz
            br_if 0 (;@4;)
            i32.const 43
            local.set 3
            local.get 14
            i32.const -1
            i32.add
            local.tee 14
            local.get 11
            i32.ge_u
            br_if 3 (;@1;)
            br 1 (;@3;)
          end
          local.get 0
          i32.const 9
          i32.add
          i32.load8_u
          i32.eqz
          br_if 1 (;@2;)
          i32.const 32
          local.set 3
          local.get 14
          i32.const -1
          i32.add
          local.tee 14
          local.get 11
          i32.ge_u
          br_if 2 (;@1;)
        end
        local.get 10
        local.get 14
        i32.add
        local.get 3
        i32.store8
      end
      local.get 0
      i32.const 10
      i32.add
      local.tee 3
      i32.load8_u
      local.set 12
      local.get 3
      i32.const 0
      i32.store8
      block  ;; label = @2
        local.get 11
        local.get 11
        i32.gt_u
        br_if 0 (;@2;)
        local.get 11
        local.get 14
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 10
        local.get 14
        i32.add
        local.get 11
        local.get 14
        i32.sub
        call $_*fmt.fmt_.pad
        i32.const 0
        local.get 7
        i32.store offset=83624
        local.get 0
        local.get 12
        i32.const 1
        i32.and
        i32.store8 offset=10
        local.get 6
        i32.const 16
        i32.add
        global.set 0
        return
      end
      call $runtime.slicePanic
      unreachable
    end
    call $runtime.lookupPanic
    unreachable)
  (func $_*fmt.pp_.fmtBool (type 5) (param i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const -116
        i32.add
        br_table 1 (;@1;) 0 (;@2;) 1 (;@1;) 0 (;@2;)
      end
      local.get 0
      local.get 2
      call $_*fmt.pp_.badVerb
      return
    end
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 32
      i32.add
      local.set 0
      block  ;; label = @2
        local.get 1
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 72211
        i32.const 4
        call $_*fmt.fmt_.padString
        return
      end
      local.get 0
      i32.const 72215
      i32.const 5
      call $_*fmt.fmt_.padString
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $_*fmt.fmt_.padString (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 0
    i32.store offset=28
    local.get 3
    i64.const 0
    i64.store offset=20 align=4
    local.get 3
    i64.const 4
    i64.store offset=12 align=4
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 3
    i32.const 8
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 4
    i32.store offset=8
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load8_u offset=4
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=16
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.const 20
            i32.add
            local.get 3
            i32.store
            i32.const 0
            local.set 6
            loop  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 6
                        local.get 2
                        i32.ge_s
                        br_if 0 (;@10;)
                        local.get 6
                        local.get 2
                        i32.ge_u
                        br_if 7 (;@3;)
                        local.get 1
                        local.get 6
                        i32.add
                        i32.load8_s
                        local.tee 7
                        i32.const -1
                        i32.gt_s
                        br_if 3 (;@7;)
                        local.get 7
                        i32.const 255
                        i32.and
                        local.tee 8
                        i32.const 65536
                        i32.add
                        i32.load8_u
                        local.tee 7
                        i32.const 241
                        i32.eq
                        br_if 3 (;@7;)
                        local.get 6
                        local.get 7
                        i32.const 7
                        i32.and
                        local.tee 9
                        i32.add
                        local.get 2
                        i32.gt_s
                        br_if 3 (;@7;)
                        local.get 3
                        local.get 7
                        i32.const 3
                        i32.shr_u
                        i32.const 30
                        i32.and
                        local.tee 7
                        i32.const 65793
                        i32.add
                        i32.load8_u
                        local.tee 10
                        i32.store8 offset=1
                        local.get 3
                        local.get 7
                        i32.const 65792
                        i32.add
                        i32.load8_u
                        local.tee 7
                        i32.store8
                        local.get 6
                        i32.const 1
                        i32.add
                        local.tee 11
                        local.get 2
                        i32.ge_u
                        br_if 7 (;@3;)
                        local.get 1
                        local.get 11
                        i32.add
                        i32.load8_u
                        local.tee 11
                        local.get 7
                        i32.const 255
                        i32.and
                        i32.lt_u
                        br_if 1 (;@9;)
                        local.get 10
                        i32.const 255
                        i32.and
                        local.get 11
                        i32.lt_u
                        br_if 1 (;@9;)
                        i32.const 2
                        local.set 7
                        local.get 8
                        i32.const -194
                        i32.add
                        i32.const 30
                        i32.lt_u
                        br_if 2 (;@8;)
                        local.get 6
                        i32.const 2
                        i32.add
                        local.tee 7
                        local.get 2
                        i32.ge_u
                        br_if 7 (;@3;)
                        local.get 1
                        local.get 7
                        i32.add
                        i32.load8_s
                        local.tee 11
                        i32.const -1
                        i32.gt_s
                        br_if 1 (;@9;)
                        i32.const 1
                        local.set 7
                        local.get 11
                        i32.const 255
                        i32.and
                        i32.const 191
                        i32.gt_u
                        br_if 2 (;@8;)
                        i32.const 3
                        local.set 7
                        local.get 8
                        i32.const 240
                        i32.and
                        i32.const 224
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 6
                        i32.const 3
                        i32.add
                        local.tee 7
                        local.get 2
                        i32.ge_u
                        br_if 7 (;@3;)
                        i32.const 1
                        i32.const 1
                        local.get 9
                        local.get 1
                        local.get 7
                        i32.add
                        i32.load8_u
                        local.tee 7
                        i32.const 191
                        i32.gt_u
                        select
                        local.get 7
                        i32.const 24
                        i32.shl
                        i32.const 24
                        i32.shr_s
                        i32.const -1
                        i32.gt_s
                        select
                        local.set 7
                        br 2 (;@8;)
                      end
                      local.get 0
                      i32.const 6
                      i32.add
                      i32.load8_u
                      i32.eqz
                      br_if 7 (;@2;)
                      local.get 3
                      i32.const 24
                      i32.add
                      local.get 0
                      i32.load
                      local.tee 6
                      i32.store
                      local.get 6
                      local.get 1
                      local.get 2
                      call $_*fmt.buffer_.writeString
                      local.get 0
                      local.get 5
                      call $_*fmt.fmt_.writePadding
                      br 8 (;@1;)
                    end
                    i32.const 1
                    local.set 7
                  end
                  local.get 7
                  local.get 6
                  i32.add
                  local.set 6
                  br 1 (;@6;)
                end
                local.get 6
                i32.const 1
                i32.add
                local.set 6
              end
              local.get 5
              i32.const -1
              i32.add
              local.set 5
              br 0 (;@5;)
            end
          end
          local.get 3
          i32.const 28
          i32.add
          local.get 0
          i32.load
          local.tee 6
          i32.store
          local.get 6
          local.get 1
          local.get 2
          call $_*fmt.buffer_.writeString
          i32.const 0
          local.get 4
          i32.store offset=83624
          local.get 3
          i32.const 32
          i32.add
          global.set 0
          return
        end
        call $runtime.lookupPanic
        unreachable
      end
      local.get 0
      local.get 5
      call $_*fmt.fmt_.writePadding
      local.get 3
      i32.const 16
      i32.add
      local.get 0
      i32.load
      local.tee 6
      i32.store
      local.get 6
      local.get 1
      local.get 2
      call $_*fmt.buffer_.writeString
    end
    i32.const 0
    local.get 4
    i32.store offset=83624
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func $_*fmt.pp_.fmtBytes (type 12) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 7
    global.set 0
    local.get 7
    i64.const 0
    i64.store offset=52 align=4
    local.get 7
    i64.const 0
    i64.store offset=44 align=4
    local.get 7
    i64.const 5
    i64.store offset=36 align=4
    i32.const 0
    i32.load offset=83624
    local.set 8
    i32.const 0
    local.get 7
    i32.const 32
    i32.add
    i32.store offset=83624
    local.get 7
    local.get 8
    i32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 4
                                      i32.const -113
                                      i32.add
                                      br_table 6 (;@11;) 2 (;@15;) 4 (;@13;) 2 (;@15;) 2 (;@15;) 1 (;@16;) 2 (;@15;) 8 (;@9;) 0 (;@17;)
                                    end
                                    local.get 4
                                    i32.const 88
                                    i32.eq
                                    br_if 6 (;@10;)
                                    local.get 4
                                    i32.const 100
                                    i32.ne
                                    br_if 1 (;@15;)
                                  end
                                  local.get 0
                                  br_if 1 (;@14;)
                                  br 14 (;@1;)
                                end
                                local.get 7
                                i32.const 40
                                i32.add
                                i32.const 12
                                call $runtime.alloc
                                local.tee 5
                                i32.store
                                local.get 7
                                i32.const 32
                                i32.add
                                i32.const 12
                                i32.add
                                local.get 5
                                i32.store
                                local.get 5
                                local.get 3
                                i32.store offset=8
                                local.get 5
                                local.get 2
                                i32.store offset=4
                                local.get 5
                                local.get 1
                                i32.store
                                local.get 7
                                i32.const 8
                                i32.add
                                i32.const 519
                                local.get 5
                                call $reflect.ValueOf
                                local.get 7
                                i32.const 48
                                i32.add
                                local.get 7
                                i32.load offset=12
                                local.tee 5
                                i32.store
                                local.get 0
                                local.get 7
                                i32.load offset=8
                                local.get 5
                                i32.const 2
                                local.get 4
                                i32.const 0
                                call $_*fmt.pp_.printValue
                                br 11 (;@3;)
                              end
                              local.get 0
                              i32.const 44
                              i32.add
                              i32.load8_u
                              i32.eqz
                              br_if 8 (;@5;)
                              local.get 0
                              local.get 5
                              local.get 6
                              call $_*fmt.buffer_.writeString
                              local.get 1
                              i32.eqz
                              br_if 1 (;@12;)
                              local.get 0
                              i32.const 123
                              call $_*fmt.buffer_.writeByte
                              i32.const 0
                              local.set 5
                              local.get 2
                              i32.const 0
                              local.get 2
                              i32.const 0
                              i32.gt_s
                              select
                              local.set 4
                              br 9 (;@4;)
                            end
                            local.get 0
                            i32.eqz
                            br_if 11 (;@1;)
                            local.get 0
                            i32.const 37
                            i32.add
                            i32.load8_u
                            i32.eqz
                            br_if 5 (;@7;)
                            local.get 7
                            i32.const 32
                            i32.add
                            i32.const 20
                            i32.add
                            local.get 7
                            i32.const 24
                            i32.add
                            i32.store
                            local.get 0
                            i32.const 52
                            i32.add
                            i32.load
                            i32.const -1
                            i32.add
                            local.set 4
                            i32.const 0
                            local.set 5
                            loop  ;; label = @13
                              local.get 5
                              local.get 2
                              i32.ge_s
                              br_if 6 (;@7;)
                              block  ;; label = @14
                                local.get 4
                                i32.const -1
                                i32.gt_s
                                br_if 0 (;@14;)
                                local.get 5
                                local.get 3
                                i32.le_u
                                br_if 8 (;@6;)
                                br 6 (;@8;)
                              end
                              local.get 5
                              local.get 2
                              i32.ge_u
                              br_if 11 (;@2;)
                              i32.const 1
                              local.set 6
                              block  ;; label = @14
                                local.get 1
                                local.get 5
                                i32.add
                                local.tee 9
                                i32.load8_s
                                local.tee 10
                                i32.const 0
                                i32.ge_s
                                br_if 0 (;@14;)
                                local.get 2
                                local.get 3
                                i32.gt_u
                                br_if 6 (;@8;)
                                local.get 5
                                local.get 2
                                i32.gt_u
                                br_if 6 (;@8;)
                                i32.const 0
                                local.set 6
                                local.get 2
                                local.get 5
                                i32.sub
                                local.tee 11
                                i32.const 0
                                i32.le_s
                                br_if 0 (;@14;)
                                i32.const 1
                                local.set 12
                                block  ;; label = @15
                                  local.get 10
                                  i32.const 255
                                  i32.and
                                  local.tee 10
                                  i32.const -194
                                  i32.add
                                  i32.const 50
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 7
                                  local.get 10
                                  i32.const 65536
                                  i32.add
                                  i32.load8_u
                                  local.tee 12
                                  i32.const 3
                                  i32.shr_u
                                  i32.const 30
                                  i32.and
                                  local.tee 6
                                  i32.const 65793
                                  i32.add
                                  i32.load8_u
                                  local.tee 13
                                  i32.store8 offset=25
                                  local.get 7
                                  local.get 6
                                  i32.const 65792
                                  i32.add
                                  i32.load8_u
                                  local.tee 14
                                  i32.store8 offset=24
                                  i32.const 1
                                  local.set 6
                                  local.get 11
                                  local.get 12
                                  i32.const 7
                                  i32.and
                                  i32.lt_s
                                  br_if 1 (;@14;)
                                  local.get 11
                                  i32.const 2
                                  i32.lt_u
                                  br_if 13 (;@2;)
                                  local.get 9
                                  i32.load8_u offset=1
                                  local.tee 12
                                  local.get 14
                                  i32.const 255
                                  i32.and
                                  i32.lt_u
                                  br_if 1 (;@14;)
                                  local.get 13
                                  i32.const 255
                                  i32.and
                                  local.get 12
                                  i32.lt_u
                                  br_if 1 (;@14;)
                                  i32.const 2
                                  local.set 12
                                  local.get 10
                                  i32.const -224
                                  i32.add
                                  i32.const 20
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 11
                                  i32.const 3
                                  i32.lt_u
                                  br_if 13 (;@2;)
                                  local.get 9
                                  i32.load8_s offset=2
                                  local.tee 12
                                  i32.const -1
                                  i32.gt_s
                                  br_if 1 (;@14;)
                                  local.get 12
                                  i32.const 255
                                  i32.and
                                  i32.const 191
                                  i32.gt_u
                                  br_if 1 (;@14;)
                                  i32.const 3
                                  local.set 12
                                  local.get 10
                                  i32.const -240
                                  i32.add
                                  i32.const 4
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 11
                                  i32.const 4
                                  i32.lt_u
                                  br_if 13 (;@2;)
                                  local.get 9
                                  i32.load8_s offset=3
                                  local.tee 10
                                  i32.const -1
                                  i32.gt_s
                                  br_if 1 (;@14;)
                                  i32.const 4
                                  local.set 12
                                  local.get 10
                                  i32.const 255
                                  i32.and
                                  i32.const 191
                                  i32.gt_u
                                  br_if 1 (;@14;)
                                end
                                local.get 12
                                local.set 6
                              end
                              local.get 4
                              i32.const -1
                              i32.add
                              local.set 4
                              local.get 6
                              local.get 5
                              i32.add
                              local.set 5
                              br 0 (;@13;)
                            end
                          end
                          local.get 0
                          i32.const 71835
                          i32.const 5
                          call $_*fmt.buffer_.writeString
                          i32.const 0
                          local.get 8
                          i32.store offset=83624
                          local.get 7
                          i32.const 64
                          i32.add
                          global.set 0
                          return
                        end
                        local.get 0
                        i32.eqz
                        br_if 9 (;@1;)
                        local.get 7
                        i32.const 16
                        i32.add
                        local.get 1
                        local.get 2
                        local.get 3
                        call $runtime.stringFromBytes
                        local.get 7
                        i32.const 56
                        i32.add
                        local.get 7
                        i32.load offset=16
                        local.tee 5
                        i32.store
                        local.get 0
                        i32.const 32
                        i32.add
                        local.get 5
                        local.get 7
                        i32.load offset=20
                        call $_*fmt.fmt_.fmtQ
                        br 7 (;@3;)
                      end
                      local.get 0
                      i32.eqz
                      br_if 8 (;@1;)
                      local.get 0
                      i32.const 32
                      i32.add
                      local.get 1
                      local.get 2
                      i32.const 71968
                      call $_*fmt.fmt_.fmtBx
                      br 6 (;@3;)
                    end
                    local.get 0
                    i32.eqz
                    br_if 7 (;@1;)
                    local.get 0
                    i32.const 32
                    i32.add
                    local.get 1
                    local.get 2
                    i32.const 71760
                    call $_*fmt.fmt_.fmtBx
                    br 5 (;@3;)
                  end
                  call $runtime.slicePanic
                  unreachable
                end
                local.get 2
                local.set 5
              end
              local.get 0
              i32.const 32
              i32.add
              local.get 1
              local.get 5
              call $_*fmt.fmt_.pad
              br 2 (;@3;)
            end
            local.get 0
            i32.const 32
            i32.add
            local.set 3
            local.get 0
            i32.const 91
            call $_*fmt.buffer_.writeByte
            local.get 2
            i32.const 0
            local.get 2
            i32.const 0
            i32.gt_s
            select
            local.set 6
            i32.const 0
            local.set 5
            block  ;; label = @5
              loop  ;; label = @6
                local.get 6
                local.get 5
                i32.eq
                br_if 1 (;@5;)
                local.get 2
                local.get 5
                i32.eq
                br_if 4 (;@2;)
                local.get 1
                local.get 5
                i32.add
                i64.load8_u
                local.set 15
                block  ;; label = @7
                  local.get 5
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 32
                  call $_*fmt.buffer_.writeByte
                end
                local.get 3
                local.get 15
                i32.const 10
                i32.const 0
                local.get 4
                i32.const 71760
                call $_*fmt.fmt_.fmtInteger
                local.get 5
                i32.const 1
                i32.add
                local.set 5
                br 0 (;@6;)
              end
            end
            local.get 0
            i32.const 93
            call $_*fmt.buffer_.writeByte
            br 1 (;@3;)
          end
          block  ;; label = @4
            loop  ;; label = @5
              local.get 4
              local.get 5
              i32.eq
              br_if 1 (;@4;)
              local.get 2
              local.get 5
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              local.get 5
              i32.add
              i64.load8_u
              local.set 15
              block  ;; label = @6
                local.get 5
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 71840
                i32.const 2
                call $_*fmt.buffer_.writeString
              end
              local.get 0
              local.get 15
              i32.const 1
              call $_*fmt.pp_.fmt0x64
              local.get 5
              i32.const 1
              i32.add
              local.set 5
              br 0 (;@5;)
            end
          end
          local.get 0
          i32.const 125
          call $_*fmt.buffer_.writeByte
        end
        i32.const 0
        local.get 8
        i32.store offset=83624
        local.get 7
        i32.const 64
        i32.add
        global.set 0
        return
      end
      call $runtime.lookupPanic
      unreachable
    end
    call $runtime.nilPanic
    unreachable)
  (func $_*fmt.fmt_.fmtQ (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i64.const 0
    i64.store offset=100 align=4
    local.get 3
    i64.const 0
    i64.store offset=92 align=4
    local.get 3
    i64.const 0
    i64.store offset=84 align=4
    local.get 3
    i64.const 7
    i64.store offset=76 align=4
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 3
    i32.const 72
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 4
    i32.store offset=72
    local.get 3
    i32.const 64
    i32.add
    local.get 0
    local.get 1
    local.get 2
    call $_*fmt.fmt_.truncateString
    local.get 3
    local.get 3
    i32.load offset=64
    local.tee 5
    i32.store offset=80
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 3
    i32.load offset=68
    local.set 6
    block  ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      i32.load8_u
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 84
      i32.add
      local.set 7
      local.get 5
      local.set 2
      local.get 6
      local.set 1
      loop  ;; label = @2
        local.get 7
        local.get 2
        i32.store
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 1
            i32.lt_s
            br_if 0 (;@4;)
            local.get 3
            i32.const 40
            i32.add
            local.get 2
            local.get 1
            call $unicode/utf8.DecodeRuneInString
            block  ;; label = @5
              local.get 1
              local.get 3
              i32.load offset=44
              local.tee 8
              i32.ge_u
              br_if 0 (;@5;)
              call $runtime.slicePanic
              unreachable
            end
            local.get 3
            i32.load offset=40
            local.set 9
            local.get 1
            local.get 8
            i32.sub
            local.set 1
            local.get 2
            local.get 8
            i32.add
            local.set 2
            local.get 8
            i32.const 1
            i32.le_s
            br_if 1 (;@3;)
            local.get 9
            i32.const 65279
            i32.ne
            br_if 2 (;@2;)
            br 3 (;@1;)
          end
          local.get 3
          i32.const 56
          i32.add
          i32.const 71904
          i32.const 1
          local.get 5
          local.get 6
          call $runtime.stringConcat
          local.get 3
          i32.const 88
          i32.add
          local.get 3
          i32.load offset=56
          local.tee 1
          i32.store
          local.get 3
          i32.const 48
          i32.add
          local.get 1
          local.get 3
          i32.load offset=60
          i32.const 71904
          i32.const 1
          call $runtime.stringConcat
          local.get 3
          i32.const 92
          i32.add
          local.get 3
          i32.load offset=48
          local.tee 1
          i32.store
          local.get 0
          local.get 1
          local.get 3
          i32.load offset=52
          call $_*fmt.fmt_.padString
          i32.const 0
          local.get 4
          i32.store offset=83624
          local.get 3
          i32.const 112
          i32.add
          global.set 0
          return
        end
        local.get 9
        i32.const 65533
        i32.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 9
          i32.const 31
          i32.gt_s
          br_if 0 (;@3;)
          local.get 9
          i32.const 9
          i32.ne
          br_if 2 (;@1;)
        end
        local.get 9
        i32.const 96
        i32.eq
        br_if 1 (;@1;)
        local.get 9
        i32.const 127
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.const 24
    i32.add
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 7
        i32.add
        i32.load8_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 24
        i32.add
        local.get 1
        i32.const 0
        i32.const 68
        local.get 5
        local.get 6
        call $strconv.AppendQuote
        local.get 3
        i32.const 104
        i32.add
        local.get 3
        i32.load offset=24
        local.tee 1
        i32.store
        local.get 0
        local.get 1
        local.get 3
        i32.load offset=28
        call $_*fmt.fmt_.pad
        br 1 (;@1;)
      end
      local.get 3
      i32.const 8
      i32.add
      local.get 1
      i32.const 0
      i32.const 68
      local.get 5
      local.get 6
      i32.const 1
      call $strconv.appendQuotedWith
      local.get 3
      i32.const 100
      i32.add
      local.get 3
      i32.load offset=8
      local.tee 1
      i32.store
      local.get 3
      i32.const 72
      i32.add
      i32.const 24
      i32.add
      local.get 1
      i32.store
      local.get 0
      local.get 1
      local.get 3
      i32.load offset=12
      call $_*fmt.fmt_.pad
    end
    i32.const 0
    local.get 4
    i32.store offset=83624
    local.get 3
    i32.const 112
    i32.add
    global.set 0)
  (func $_*fmt.fmt_.fmtBx (type 7) (param i32 i32 i32 i32)
    local.get 0
    i32.const 72144
    i32.const 0
    local.get 1
    local.get 2
    local.get 3
    call $_*fmt.fmt_.fmtSbx)
  (func $_*fmt.fmt_.pad (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 0
    i32.store offset=28
    local.get 3
    i64.const 0
    i64.store offset=20 align=4
    local.get 3
    i64.const 4
    i64.store offset=12 align=4
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 3
    i32.const 8
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 4
    i32.store offset=8
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load8_u offset=4
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=16
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.const 20
            i32.add
            local.get 3
            i32.store
            i32.const 0
            local.set 6
            loop  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 6
                          local.get 2
                          i32.ge_s
                          br_if 0 (;@11;)
                          local.get 6
                          local.get 2
                          i32.ge_u
                          br_if 8 (;@3;)
                          local.get 1
                          local.get 6
                          i32.add
                          i32.load8_s
                          local.tee 7
                          i32.const -1
                          i32.le_s
                          br_if 1 (;@10;)
                          br 2 (;@9;)
                        end
                        local.get 0
                        i32.const 6
                        i32.add
                        i32.load8_u
                        i32.eqz
                        br_if 8 (;@2;)
                        local.get 3
                        i32.const 24
                        i32.add
                        local.get 0
                        i32.load
                        local.tee 6
                        i32.store
                        local.get 6
                        local.get 1
                        local.get 2
                        call $_*fmt.buffer_.write
                        local.get 0
                        local.get 5
                        call $_*fmt.fmt_.writePadding
                        br 9 (;@1;)
                      end
                      local.get 7
                      i32.const 255
                      i32.and
                      local.tee 8
                      i32.const 65536
                      i32.add
                      i32.load8_u
                      local.tee 7
                      i32.const 241
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 6
                      local.get 7
                      i32.const 7
                      i32.and
                      local.tee 9
                      i32.add
                      local.get 2
                      i32.gt_s
                      br_if 0 (;@9;)
                      local.get 3
                      local.get 7
                      i32.const 3
                      i32.shr_u
                      i32.const 30
                      i32.and
                      local.tee 7
                      i32.const 65793
                      i32.add
                      i32.load8_u
                      local.tee 10
                      i32.store8 offset=1
                      local.get 3
                      local.get 7
                      i32.const 65792
                      i32.add
                      i32.load8_u
                      local.tee 7
                      i32.store8
                      local.get 6
                      i32.const 1
                      i32.add
                      local.tee 11
                      local.get 2
                      i32.ge_u
                      br_if 6 (;@3;)
                      local.get 1
                      local.get 11
                      i32.add
                      i32.load8_u
                      local.tee 11
                      local.get 7
                      i32.const 255
                      i32.and
                      i32.lt_u
                      br_if 1 (;@8;)
                      local.get 10
                      i32.const 255
                      i32.and
                      local.get 11
                      i32.lt_u
                      br_if 1 (;@8;)
                      i32.const 2
                      local.set 7
                      local.get 8
                      i32.const -194
                      i32.add
                      i32.const 30
                      i32.lt_u
                      br_if 2 (;@7;)
                      local.get 6
                      i32.const 2
                      i32.add
                      local.tee 7
                      local.get 2
                      i32.ge_u
                      br_if 6 (;@3;)
                      local.get 1
                      local.get 7
                      i32.add
                      i32.load8_s
                      local.tee 11
                      i32.const -1
                      i32.gt_s
                      br_if 1 (;@8;)
                      i32.const 1
                      local.set 7
                      local.get 11
                      i32.const 255
                      i32.and
                      i32.const 191
                      i32.gt_u
                      br_if 2 (;@7;)
                      i32.const 3
                      local.set 7
                      local.get 8
                      i32.const 240
                      i32.and
                      i32.const 224
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 6
                      i32.const 3
                      i32.add
                      local.tee 7
                      local.get 2
                      i32.ge_u
                      br_if 6 (;@3;)
                      i32.const 1
                      i32.const 1
                      local.get 9
                      local.get 1
                      local.get 7
                      i32.add
                      i32.load8_u
                      local.tee 7
                      i32.const 191
                      i32.gt_u
                      select
                      local.get 7
                      i32.const 24
                      i32.shl
                      i32.const 24
                      i32.shr_s
                      i32.const -1
                      i32.gt_s
                      select
                      local.set 7
                      br 2 (;@7;)
                    end
                    local.get 6
                    i32.const 1
                    i32.add
                    local.set 6
                    br 2 (;@6;)
                  end
                  i32.const 1
                  local.set 7
                end
                local.get 7
                local.get 6
                i32.add
                local.set 6
              end
              local.get 5
              i32.const -1
              i32.add
              local.set 5
              br 0 (;@5;)
            end
          end
          local.get 3
          i32.const 28
          i32.add
          local.get 0
          i32.load
          local.tee 6
          i32.store
          local.get 6
          local.get 1
          local.get 2
          call $_*fmt.buffer_.write
          i32.const 0
          local.get 4
          i32.store offset=83624
          local.get 3
          i32.const 32
          i32.add
          global.set 0
          return
        end
        call $runtime.lookupPanic
        unreachable
      end
      local.get 0
      local.get 5
      call $_*fmt.fmt_.writePadding
      local.get 3
      i32.const 16
      i32.add
      local.get 0
      i32.load
      local.tee 6
      i32.store
      local.get 6
      local.get 1
      local.get 2
      call $_*fmt.buffer_.write
    end
    i32.const 0
    local.get 4
    i32.store offset=83624
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func $_*fmt.pp_.fmtComplex (type 28) (param i32 f64 f64 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.const -88
            i32.add
            local.tee 5
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
            i32.const 1
            local.get 5
            i32.shl
            i32.const 58369
            i32.and
            br_if 1 (;@3;)
          end
          local.get 4
          i32.const -69
          i32.add
          i32.const 3
          i32.lt_u
          br_if 0 (;@3;)
          local.get 4
          i32.const -118
          i32.add
          br_table 0 (;@3;) 1 (;@2;) 0 (;@3;) 1 (;@2;)
        end
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 39
        i32.add
        local.tee 5
        i32.load8_u
        local.set 6
        local.get 0
        i32.const 40
        call $_*fmt.buffer_.writeByte
        local.get 0
        local.get 1
        local.get 3
        i32.const 2
        i32.div_s
        local.tee 3
        local.get 4
        call $_*fmt.pp_.fmtFloat
        local.get 5
        i32.const 1
        i32.store8
        local.get 0
        local.get 2
        local.get 3
        local.get 4
        call $_*fmt.pp_.fmtFloat
        local.get 0
        i32.const 71747
        i32.const 2
        call $_*fmt.buffer_.writeString
        local.get 5
        local.get 6
        i32.const 1
        i32.and
        i32.store8
        return
      end
      local.get 0
      local.get 4
      call $_*fmt.pp_.badVerb
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $_*fmt.pp_.fmtFloat (type 29) (param i32 f64 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.const 97
                    i32.gt_s
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const -69
                    i32.add
                    br_table 5 (;@3;) 6 (;@2;) 4 (;@4;) 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 3
                    i32.const -98
                    i32.add
                    br_table 4 (;@4;) 2 (;@6;) 2 (;@6;) 5 (;@3;) 5 (;@3;) 4 (;@4;) 0 (;@8;)
                  end
                  local.get 3
                  i32.const -118
                  i32.add
                  br_table 2 (;@5;) 1 (;@6;) 3 (;@4;) 1 (;@6;)
                end
                local.get 3
                i32.const 88
                i32.eq
                br_if 2 (;@4;)
              end
              local.get 0
              local.get 3
              call $_*fmt.pp_.badVerb
              return
            end
            local.get 0
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            i32.const 32
            i32.add
            local.get 1
            local.get 2
            i32.const 103
            i32.const -1
            call $_*fmt.fmt_.fmtFloat
            return
          end
          local.get 0
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 32
          i32.add
          local.get 1
          local.get 2
          local.get 3
          i32.const -1
          call $_*fmt.fmt_.fmtFloat
          return
        end
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 32
        i32.add
        local.get 1
        local.get 2
        local.get 3
        i32.const 6
        call $_*fmt.fmt_.fmtFloat
        return
      end
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 32
      i32.add
      local.get 1
      local.get 2
      i32.const 102
      i32.const 6
      call $_*fmt.fmt_.fmtFloat
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $_*fmt.fmt_.fmtFloat (type 30) (param i32 f64 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 192
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    i64.const 85899345920
    i64.store offset=104
    local.get 5
    i64.const 0
    i64.store offset=184
    local.get 5
    i64.const 0
    i64.store offset=176
    local.get 5
    i64.const 0
    i64.store offset=168
    local.get 5
    i64.const 0
    i64.store offset=160
    local.get 5
    i64.const 0
    i64.store offset=152
    local.get 5
    i64.const 0
    i64.store offset=144
    local.get 5
    i64.const 0
    i64.store offset=136
    local.get 5
    i64.const 0
    i64.store offset=128
    local.get 5
    i64.const 0
    i64.store offset=120
    local.get 5
    i64.const 0
    i64.store offset=112
    i32.const 0
    i32.load offset=83624
    local.set 6
    i32.const 0
    local.get 5
    i32.const 104
    i32.add
    i32.store offset=83624
    local.get 5
    local.get 6
    i32.store offset=104
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    block  ;; label = @1
      local.get 0
      i32.const 5
      i32.add
      i32.load8_u
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=20
      local.set 4
    end
    local.get 5
    i32.const 80
    i32.add
    local.get 0
    i32.const 24
    i32.add
    local.get 1
    local.get 3
    local.get 4
    local.get 2
    call $strconv.genericFtoa
    local.get 5
    i32.const 172
    i32.add
    local.get 5
    i32.load offset=80
    local.tee 2
    i32.store
    local.get 5
    i32.const 168
    i32.add
    local.get 2
    i32.store
    block  ;; label = @1
      local.get 5
      i32.load offset=84
      local.tee 7
      i32.const 1
      i32.le_u
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=88
      local.set 8
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load8_u offset=1
              i32.const -43
              i32.add
              br_table 0 (;@5;) 1 (;@4;) 0 (;@5;) 1 (;@4;)
            end
            local.get 7
            local.get 8
            i32.gt_u
            br_if 2 (;@2;)
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            local.get 8
            i32.const -1
            i32.add
            local.set 8
            local.get 7
            i32.const -1
            i32.add
            local.set 7
            br 1 (;@3;)
          end
          local.get 2
          i32.const 43
          i32.store8
        end
        local.get 5
        i32.const 112
        i32.add
        local.get 2
        i32.store
        block  ;; label = @3
          local.get 0
          i32.const 9
          i32.add
          i32.load8_u
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          i32.eqz
          br_if 2 (;@1;)
          local.get 2
          i32.load8_u
          i32.const 43
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.const 7
          i32.add
          i32.load8_u
          br_if 0 (;@3;)
          local.get 2
          i32.const 32
          i32.store8
        end
        local.get 7
        i32.const 2
        i32.lt_u
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load8_u offset=1
            local.tee 9
            i32.const 78
            i32.eq
            br_if 0 (;@4;)
            local.get 9
            i32.const 73
            i32.ne
            br_if 1 (;@3;)
          end
          local.get 0
          i32.const 10
          i32.add
          local.tee 4
          i32.load8_u
          local.set 9
          local.get 4
          i32.const 0
          i32.store8
          block  ;; label = @4
            local.get 2
            i32.const 1
            i32.add
            local.tee 4
            i32.load8_u
            i32.const 78
            i32.ne
            br_if 0 (;@4;)
            local.get 0
            i32.load8_u offset=9
            br_if 0 (;@4;)
            local.get 0
            i32.const 7
            i32.add
            i32.load8_u
            br_if 0 (;@4;)
            local.get 7
            local.get 8
            i32.gt_u
            br_if 2 (;@2;)
            local.get 7
            i32.const -1
            i32.add
            local.set 7
            local.get 4
            local.set 2
          end
          local.get 5
          i32.const 116
          i32.add
          local.get 2
          i32.store
          local.get 0
          local.get 2
          local.get 7
          call $_*fmt.fmt_.pad
          i32.const 0
          local.get 6
          i32.store offset=83624
          local.get 0
          local.get 9
          i32.const 1
          i32.and
          i32.store8 offset=10
          local.get 5
          i32.const 192
          i32.add
          global.set 0
          return
        end
        block  ;; label = @3
          local.get 3
          i32.const 98
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          i32.const 8
          i32.add
          i32.load8_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 10
          i32.const 0
          local.set 9
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.const -118
                i32.add
                br_table 1 (;@5;) 2 (;@4;) 1 (;@5;) 0 (;@6;)
              end
              local.get 3
              i32.const 103
              i32.eq
              br_if 0 (;@5;)
              i32.const 0
              local.set 9
              local.get 3
              i32.const 71
              i32.ne
              br_if 1 (;@4;)
            end
            i32.const 6
            local.get 4
            local.get 4
            i32.const -1
            i32.eq
            select
            local.set 9
          end
          i32.const 6
          local.set 11
          local.get 5
          i32.const 120
          i32.add
          i32.const 6
          call $runtime.alloc
          local.tee 12
          i32.store
          local.get 5
          i32.const 128
          i32.add
          local.set 13
          local.get 5
          i32.const 124
          i32.add
          local.set 14
          local.get 3
          i32.const 32
          i32.or
          i32.const 120
          i32.eq
          local.set 15
          local.get 5
          i32.const 132
          i32.add
          local.set 16
          local.get 5
          i32.const 180
          i32.add
          local.set 17
          local.get 5
          i32.const 176
          i32.add
          local.set 18
          i32.const -1
          local.set 19
          i32.const 0
          local.set 20
          i32.const 1
          local.set 4
          loop  ;; label = @4
            local.get 13
            local.get 2
            i32.store
            local.get 14
            local.get 12
            i32.store
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 7
                              local.get 4
                              i32.le_s
                              br_if 0 (;@13;)
                              local.get 7
                              local.get 4
                              i32.gt_u
                              br_if 1 (;@12;)
                              br 12 (;@1;)
                            end
                            local.get 20
                            i32.const 1
                            i32.and
                            br_if 1 (;@11;)
                            local.get 5
                            i32.const 0
                            i32.store offset=96
                            local.get 5
                            i32.const 156
                            i32.add
                            local.get 5
                            i32.const 96
                            i32.add
                            i32.store
                            local.get 5
                            i32.const 46
                            i32.store8 offset=96
                            local.get 5
                            i32.const 64
                            i32.add
                            local.get 2
                            local.get 5
                            i32.const 96
                            i32.add
                            local.get 7
                            local.get 8
                            i32.const 1
                            i32.const 1
                            call $runtime.sliceAppend
                            local.get 5
                            i32.const 160
                            i32.add
                            local.get 5
                            i32.load offset=64
                            local.tee 2
                            i32.store
                            local.get 5
                            i32.load offset=72
                            local.set 8
                            local.get 5
                            i32.load offset=68
                            local.set 7
                            br 1 (;@11;)
                          end
                          block  ;; label = @12
                            local.get 2
                            local.get 4
                            i32.add
                            local.tee 21
                            i32.load8_u
                            local.tee 3
                            i32.const 79
                            i32.gt_s
                            br_if 0 (;@12;)
                            local.get 3
                            i32.const 46
                            i32.ne
                            br_if 2 (;@10;)
                            i32.const 1
                            local.set 20
                            br 7 (;@5;)
                          end
                          local.get 3
                          i32.const 80
                          i32.eq
                          br_if 4 (;@7;)
                          local.get 3
                          i32.const 101
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 3
                          i32.const 112
                          i32.eq
                          br_if 4 (;@7;)
                          br 3 (;@8;)
                        end
                        local.get 5
                        i32.const 144
                        i32.add
                        local.get 5
                        i32.const 100
                        i32.add
                        i32.store
                        local.get 5
                        i32.const 140
                        i32.add
                        local.set 4
                        local.get 5
                        i32.const 148
                        i32.add
                        local.set 3
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 4
                            local.get 2
                            i32.store
                            local.get 9
                            i32.const 1
                            i32.lt_s
                            br_if 1 (;@11;)
                            local.get 5
                            i32.const 0
                            i32.store offset=100
                            local.get 5
                            i32.const 48
                            i32.store8 offset=100
                            local.get 5
                            i32.const 32
                            i32.add
                            local.get 2
                            local.get 5
                            i32.const 100
                            i32.add
                            local.get 7
                            local.get 8
                            i32.const 1
                            i32.const 1
                            call $runtime.sliceAppend
                            local.get 3
                            local.get 5
                            i32.load offset=32
                            local.tee 2
                            i32.store
                            local.get 9
                            i32.const -1
                            i32.add
                            local.set 9
                            local.get 5
                            i32.load offset=40
                            local.set 8
                            local.get 5
                            i32.load offset=36
                            local.set 7
                            br 0 (;@12;)
                          end
                        end
                        local.get 5
                        i32.const 48
                        i32.add
                        local.get 2
                        local.get 12
                        local.get 7
                        local.get 8
                        local.get 10
                        i32.const 1
                        call $runtime.sliceAppend
                        local.get 5
                        i32.const 152
                        i32.add
                        local.get 5
                        i32.load offset=48
                        local.tee 2
                        i32.store
                        local.get 5
                        i32.load offset=56
                        local.set 8
                        local.get 5
                        i32.load offset=52
                        local.set 7
                        br 7 (;@3;)
                      end
                      local.get 3
                      i32.const 69
                      i32.ne
                      br_if 1 (;@8;)
                    end
                    local.get 15
                    br_if 0 (;@8;)
                    local.get 7
                    local.get 8
                    i32.gt_u
                    br_if 6 (;@2;)
                    local.get 7
                    local.get 4
                    i32.lt_u
                    br_if 6 (;@2;)
                    local.get 5
                    i32.const 16
                    i32.add
                    local.get 12
                    local.get 21
                    local.get 10
                    local.get 11
                    local.get 7
                    local.get 19
                    i32.add
                    i32.const 1
                    call $runtime.sliceAppend
                    local.get 17
                    local.get 5
                    i32.load offset=16
                    local.tee 12
                    i32.store
                    local.get 4
                    local.get 8
                    i32.gt_u
                    br_if 6 (;@2;)
                    local.get 5
                    i32.load offset=24
                    local.set 11
                    local.get 5
                    i32.load offset=20
                    local.set 10
                    br 2 (;@6;)
                  end
                  local.get 9
                  i32.const -1
                  i32.add
                  local.set 9
                  br 2 (;@5;)
                end
                local.get 7
                local.get 8
                i32.gt_u
                br_if 4 (;@2;)
                local.get 7
                local.get 4
                i32.lt_u
                br_if 4 (;@2;)
                local.get 5
                local.get 12
                local.get 21
                local.get 10
                local.get 11
                local.get 7
                local.get 19
                i32.add
                i32.const 1
                call $runtime.sliceAppend
                local.get 18
                local.get 5
                i32.load
                local.tee 12
                i32.store
                local.get 4
                local.get 8
                i32.gt_u
                br_if 4 (;@2;)
                local.get 5
                i32.load offset=8
                local.set 11
                local.get 5
                i32.load offset=4
                local.set 10
              end
              local.get 4
              local.set 7
            end
            local.get 5
            i32.const 104
            i32.add
            i32.const 32
            i32.add
            local.get 2
            i32.store
            local.get 16
            local.get 12
            i32.store
            local.get 19
            i32.const -1
            i32.add
            local.set 19
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            br 0 (;@4;)
          end
        end
        local.get 5
        i32.const 164
        i32.add
        local.get 2
        i32.store
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 7
              i32.add
              i32.load8_u
              br_if 0 (;@5;)
              local.get 7
              i32.eqz
              br_if 4 (;@1;)
              local.get 2
              i32.load8_u
              i32.const 43
              i32.eq
              br_if 1 (;@4;)
            end
            local.get 0
            i32.const 10
            i32.add
            i32.load8_u
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            i32.load8_u offset=4
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            i32.load offset=16
            local.get 7
            i32.le_s
            br_if 1 (;@3;)
            local.get 5
            i32.const 184
            i32.add
            local.get 0
            i32.load
            local.tee 4
            i32.store
            local.get 7
            i32.eqz
            br_if 3 (;@1;)
            local.get 4
            local.get 2
            i32.load8_u
            call $_*fmt.buffer_.writeByte
            local.get 0
            local.get 0
            i32.load offset=16
            local.get 7
            i32.sub
            call $_*fmt.fmt_.writePadding
            local.get 5
            i32.const 188
            i32.add
            local.get 0
            i32.load
            local.tee 4
            i32.store
            local.get 7
            local.get 8
            i32.gt_u
            br_if 2 (;@2;)
            local.get 4
            local.get 2
            i32.const 1
            i32.add
            local.get 7
            i32.const -1
            i32.add
            call $_*fmt.buffer_.write
            i32.const 0
            local.get 6
            i32.store offset=83624
            local.get 5
            i32.const 192
            i32.add
            global.set 0
            return
          end
          local.get 7
          local.get 8
          i32.gt_u
          br_if 1 (;@2;)
          local.get 0
          local.get 2
          i32.const 1
          i32.add
          local.get 7
          i32.const -1
          i32.add
          call $_*fmt.fmt_.pad
          i32.const 0
          local.get 6
          i32.store offset=83624
          local.get 5
          i32.const 192
          i32.add
          global.set 0
          return
        end
        local.get 0
        local.get 2
        local.get 7
        call $_*fmt.fmt_.pad
        i32.const 0
        local.get 6
        i32.store offset=83624
        local.get 5
        i32.const 192
        i32.add
        global.set 0
        return
      end
      call $runtime.slicePanic
      unreachable
    end
    call $runtime.lookupPanic
    unreachable)
  (func $_*fmt.pp_.fmtInteger (type 18) (param i32 i64 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i32.const 0
    i32.store offset=60
    local.get 4
    i64.const 0
    i64.store offset=52 align=4
    local.get 4
    i64.const 0
    i64.store offset=44 align=4
    local.get 4
    i64.const 6
    i64.store offset=36 align=4
    i32.const 0
    i32.load offset=83624
    local.set 5
    i32.const 0
    local.get 4
    i32.const 32
    i32.add
    i32.store offset=83624
    local.get 4
    local.get 5
    i32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 3
                                  i32.const 110
                                  i32.gt_s
                                  br_if 0 (;@15;)
                                  block  ;; label = @16
                                    local.get 3
                                    i32.const -98
                                    i32.add
                                    br_table 6 (;@10;) 10 (;@6;) 5 (;@11;) 0 (;@16;)
                                  end
                                  local.get 3
                                  i32.const -85
                                  i32.add
                                  br_table 11 (;@4;) 2 (;@13;) 2 (;@13;) 8 (;@7;) 1 (;@14;)
                                end
                                block  ;; label = @15
                                  local.get 3
                                  i32.const -111
                                  i32.add
                                  br_table 6 (;@9;) 2 (;@13;) 0 (;@15;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 3 (;@12;) 2 (;@13;) 7 (;@8;) 2 (;@13;)
                                end
                                block  ;; label = @15
                                  local.get 1
                                  i64.const 1114111
                                  i64.gt_u
                                  br_if 0 (;@15;)
                                  local.get 0
                                  br_if 10 (;@5;)
                                  br 12 (;@3;)
                                end
                                local.get 0
                                i32.const 113
                                call $_*fmt.pp_.badVerb
                                br 13 (;@1;)
                              end
                              local.get 3
                              i32.const 79
                              i32.eq
                              br_if 4 (;@9;)
                            end
                            local.get 0
                            local.get 3
                            call $_*fmt.pp_.badVerb
                            br 11 (;@1;)
                          end
                          local.get 0
                          i32.eqz
                          br_if 8 (;@3;)
                          block  ;; label = @12
                            local.get 0
                            i32.const 44
                            i32.add
                            i32.load8_u
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 2
                            i32.const 1
                            i32.and
                            i32.eqz
                            br_if 10 (;@2;)
                          end
                          local.get 0
                          i32.const 32
                          i32.add
                          local.get 1
                          i32.const 10
                          local.get 2
                          i32.const 118
                          i32.const 71760
                          call $_*fmt.fmt_.fmtInteger
                          br 10 (;@1;)
                        end
                        local.get 0
                        i32.eqz
                        br_if 7 (;@3;)
                        local.get 0
                        i32.const 32
                        i32.add
                        local.get 1
                        i32.const 10
                        local.get 2
                        i32.const 100
                        i32.const 71760
                        call $_*fmt.fmt_.fmtInteger
                        br 9 (;@1;)
                      end
                      local.get 0
                      i32.eqz
                      br_if 6 (;@3;)
                      local.get 0
                      i32.const 32
                      i32.add
                      local.get 1
                      i32.const 2
                      local.get 2
                      i32.const 98
                      i32.const 71760
                      call $_*fmt.fmt_.fmtInteger
                      br 8 (;@1;)
                    end
                    local.get 0
                    i32.eqz
                    br_if 5 (;@3;)
                    local.get 0
                    i32.const 32
                    i32.add
                    local.get 1
                    i32.const 8
                    local.get 2
                    local.get 3
                    i32.const 71760
                    call $_*fmt.fmt_.fmtInteger
                    br 7 (;@1;)
                  end
                  local.get 0
                  i32.eqz
                  br_if 4 (;@3;)
                  local.get 0
                  i32.const 32
                  i32.add
                  local.get 1
                  i32.const 16
                  local.get 2
                  i32.const 120
                  i32.const 71760
                  call $_*fmt.fmt_.fmtInteger
                  br 6 (;@1;)
                end
                local.get 0
                i32.eqz
                br_if 3 (;@3;)
                local.get 0
                i32.const 32
                i32.add
                local.get 1
                i32.const 16
                local.get 2
                i32.const 88
                i32.const 71968
                call $_*fmt.fmt_.fmtInteger
                br 5 (;@1;)
              end
              local.get 0
              i32.eqz
              br_if 2 (;@3;)
              local.get 0
              i32.const 56
              i32.add
              local.set 3
              local.get 0
              i32.const 32
              i32.add
              local.get 3
              local.get 3
              i32.const 4
              i32.const 65533
              local.get 1
              i32.wrap_i64
              local.get 1
              i64.const 1114111
              i64.gt_u
              select
              call $unicode/utf8.EncodeRune
              call $_*fmt.fmt_.pad
              br 4 (;@1;)
            end
            local.get 0
            i32.const 56
            i32.add
            local.set 3
            local.get 0
            i32.const 32
            i32.add
            local.set 2
            local.get 1
            i32.wrap_i64
            local.set 6
            block  ;; label = @5
              local.get 0
              i32.const 39
              i32.add
              i32.load8_u
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              local.get 3
              local.get 6
              i32.const 1
              call $strconv.appendQuotedRuneWith
              local.get 4
              i32.const 44
              i32.add
              local.get 4
              i32.load
              local.tee 3
              i32.store
              local.get 4
              i32.const 40
              i32.add
              local.get 3
              i32.store
              local.get 2
              local.get 3
              local.get 4
              i32.load offset=4
              call $_*fmt.fmt_.pad
              br 4 (;@1;)
            end
            local.get 4
            i32.const 16
            i32.add
            local.get 3
            local.get 6
            i32.const 0
            call $strconv.appendQuotedRuneWith
            local.get 4
            i32.const 52
            i32.add
            local.get 4
            i32.load offset=16
            local.tee 3
            i32.store
            local.get 4
            i32.const 48
            i32.add
            local.get 3
            i32.store
            local.get 2
            local.get 3
            local.get 4
            i32.load offset=20
            call $_*fmt.fmt_.pad
            br 3 (;@1;)
          end
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 56
          i32.add
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 37
              i32.add
              i32.load8_u
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.const 52
              i32.add
              i32.load
              local.tee 8
              i32.const 5
              i32.lt_s
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 8
                i32.const 9
                i32.add
                local.tee 2
                i32.const 69
                i32.ge_s
                br_if 0 (;@6;)
                i32.const 68
                local.set 2
                br 2 (;@4;)
              end
              local.get 4
              i32.const 60
              i32.add
              local.get 2
              call $runtime.alloc
              local.tee 7
              i32.store
              br 1 (;@4;)
            end
            i32.const 68
            local.set 2
            i32.const 4
            local.set 8
          end
          local.get 4
          i32.const 56
          i32.add
          local.get 7
          i32.store
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i64.const 1114111
                  i64.gt_u
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 40
                  i32.add
                  i32.load8_u
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 1
                  i32.wrap_i64
                  local.tee 6
                  call $strconv.IsPrint
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 2
                  i32.eqz
                  br_if 3 (;@4;)
                  i32.const -1
                  local.set 3
                  local.get 7
                  local.get 2
                  i32.const -1
                  i32.add
                  local.tee 9
                  i32.add
                  i32.const 39
                  i32.store8
                  block  ;; label = @8
                    local.get 6
                    i32.const 128
                    i32.lt_s
                    br_if 0 (;@8;)
                    i32.const -2
                    local.set 3
                    local.get 6
                    i32.const 2048
                    i32.lt_s
                    br_if 0 (;@8;)
                    i32.const 1
                    local.set 3
                    local.get 6
                    i32.const -2048
                    i32.and
                    i32.const 55296
                    i32.eq
                    br_if 0 (;@8;)
                    i32.const -3
                    i32.const -4
                    local.get 6
                    i32.const 65536
                    i32.lt_s
                    select
                    local.set 3
                  end
                  local.get 2
                  local.get 2
                  i32.gt_u
                  br_if 2 (;@5;)
                  local.get 2
                  local.get 3
                  local.get 9
                  i32.add
                  local.tee 3
                  i32.lt_u
                  br_if 2 (;@5;)
                  local.get 7
                  local.get 3
                  i32.add
                  local.get 2
                  local.get 3
                  i32.sub
                  local.get 6
                  call $unicode/utf8.EncodeRune
                  drop
                  local.get 3
                  i32.const -1
                  i32.add
                  local.tee 6
                  local.get 2
                  i32.ge_u
                  br_if 3 (;@4;)
                  local.get 7
                  local.get 6
                  i32.add
                  i32.const 39
                  i32.store8
                  local.get 3
                  i32.const -2
                  i32.add
                  local.tee 9
                  local.get 2
                  i32.ge_u
                  br_if 3 (;@4;)
                  local.get 7
                  local.get 9
                  i32.add
                  i32.const 32
                  i32.store8
                  br 1 (;@6;)
                end
                local.get 2
                local.set 9
              end
              local.get 0
              i32.const 32
              i32.add
              local.set 10
              local.get 7
              local.get 9
              i32.const -1
              i32.add
              local.tee 11
              i32.add
              local.set 12
              i32.const 0
              local.set 3
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 11
                  local.get 3
                  i32.add
                  local.set 6
                  local.get 1
                  i64.const 16
                  i64.lt_u
                  br_if 1 (;@6;)
                  local.get 6
                  local.get 2
                  i32.ge_u
                  br_if 3 (;@4;)
                  local.get 12
                  local.get 3
                  i32.add
                  local.get 1
                  i32.wrap_i64
                  i32.const 15
                  i32.and
                  i32.const 71968
                  i32.add
                  i32.load8_u
                  i32.store8
                  local.get 3
                  i32.const -1
                  i32.add
                  local.set 3
                  local.get 1
                  i64.const 4
                  i64.shr_u
                  local.set 1
                  br 0 (;@7;)
                end
              end
              local.get 6
              local.get 2
              i32.ge_u
              br_if 1 (;@4;)
              local.get 9
              local.get 7
              i32.add
              local.tee 13
              local.get 3
              i32.add
              i32.const -1
              i32.add
              local.get 1
              i32.wrap_i64
              i32.const 71968
              i32.add
              i32.load8_u
              i32.store8
              local.get 8
              i32.const -1
              i32.add
              local.set 11
              local.get 13
              i32.const -3
              i32.add
              local.set 7
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 9
                  local.get 3
                  i32.add
                  local.tee 12
                  i32.const -2
                  i32.add
                  local.set 6
                  local.get 11
                  local.get 3
                  i32.add
                  i32.const 1
                  i32.lt_s
                  br_if 1 (;@6;)
                  local.get 6
                  local.get 2
                  i32.ge_u
                  br_if 3 (;@4;)
                  local.get 7
                  local.get 3
                  i32.add
                  i32.const 1
                  i32.add
                  i32.const 48
                  i32.store8
                  local.get 3
                  i32.const -1
                  i32.add
                  local.set 3
                  br 0 (;@7;)
                end
              end
              local.get 6
              local.get 2
              i32.ge_u
              br_if 1 (;@4;)
              local.get 13
              local.get 3
              i32.add
              local.tee 6
              i32.const -2
              i32.add
              i32.const 43
              i32.store8
              local.get 2
              local.get 12
              i32.const -3
              i32.add
              i32.le_u
              br_if 1 (;@4;)
              local.get 6
              i32.const -3
              i32.add
              local.tee 6
              i32.const 85
              i32.store8
              local.get 0
              i32.const 42
              i32.add
              local.tee 11
              i32.load8_u
              local.set 12
              local.get 11
              i32.const 0
              i32.store8
              local.get 2
              local.get 2
              i32.gt_u
              br_if 0 (;@5;)
              local.get 10
              local.get 6
              local.get 2
              local.get 9
              i32.sub
              local.get 3
              i32.sub
              i32.const 3
              i32.add
              call $_*fmt.fmt_.pad
              local.get 0
              local.get 12
              i32.const 1
              i32.and
              i32.store8 offset=42
              br 4 (;@1;)
            end
            call $runtime.slicePanic
            unreachable
          end
          call $runtime.lookupPanic
          unreachable
        end
        call $runtime.nilPanic
        unreachable
      end
      local.get 0
      local.get 1
      i32.const 1
      call $_*fmt.pp_.fmt0x64
    end
    i32.const 0
    local.get 5
    i32.store offset=83624
    local.get 4
    i32.const 64
    i32.add
    global.set 0)
  (func $_*fmt.pp_.fmtPointer (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    i64.const 0
    i64.store
    local.get 5
    i32.const 1
    i32.store offset=20
    local.get 5
    local.get 3
    i32.store8 offset=8
    i32.const 0
    i32.load offset=83624
    local.set 6
    i32.const 0
    local.get 5
    i32.const 16
    i32.add
    i32.store offset=83624
    local.get 5
    local.get 6
    i32.store offset=16
    local.get 5
    local.get 2
    i32.store offset=4
    local.get 5
    local.get 1
    i32.store
    local.get 5
    local.get 5
    i32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 2
        local.get 3
        call $_reflect.Value_.Kind
        local.tee 7
        i32.const 25
        i32.gt_u
        br_if 0 (;@2;)
        i32.const 1
        local.get 7
        i32.shl
        i32.const 57409536
        i32.and
        br_if 1 (;@1;)
      end
      local.get 0
      local.get 4
      call $_*fmt.pp_.badVerb
      i32.const 0
      local.get 6
      i32.store offset=83624
      local.get 5
      i32.const 32
      i32.add
      global.set 0
      return
    end
    local.get 1
    local.get 2
    local.get 3
    call $_reflect.Value_.Pointer
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 4
                        i32.const -111
                        i32.add
                        br_table 1 (;@9;) 3 (;@7;) 5 (;@5;) 5 (;@5;) 5 (;@5;) 5 (;@5;) 5 (;@5;) 2 (;@8;) 5 (;@5;) 1 (;@9;) 0 (;@10;)
                      end
                      block  ;; label = @10
                        local.get 4
                        i32.const -98
                        i32.add
                        br_table 1 (;@9;) 5 (;@5;) 1 (;@9;) 0 (;@10;)
                      end
                      local.get 4
                      i32.const 88
                      i32.ne
                      br_if 4 (;@5;)
                    end
                    local.get 0
                    local.get 7
                    i64.extend_i32_u
                    i32.const 0
                    local.get 4
                    call $_*fmt.pp_.fmtInteger
                    br 7 (;@1;)
                  end
                  local.get 0
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 0
                  i32.const 44
                  i32.add
                  i32.load8_u
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 0
                  i32.const 40
                  call $_*fmt.buffer_.writeByte
                  local.get 1
                  local.get 2
                  local.get 3
                  call $_reflect.Value_.Type
                  drop
                  local.get 0
                  i32.const 66056
                  i32.const 1
                  call $_*fmt.buffer_.writeString
                  local.get 0
                  i32.const 71749
                  i32.const 2
                  call $_*fmt.buffer_.writeString
                  local.get 7
                  br_if 4 (;@3;)
                  local.get 0
                  i32.const 71751
                  i32.const 3
                  call $_*fmt.buffer_.writeString
                  br 5 (;@2;)
                end
                local.get 0
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                local.get 7
                i64.extend_i32_u
                local.get 0
                i32.const 40
                i32.add
                i32.load8_u
                i32.const 1
                i32.xor
                call $_*fmt.pp_.fmt0x64
                br 5 (;@1;)
              end
              call $runtime.nilPanic
              unreachable
            end
            local.get 0
            local.get 4
            call $_*fmt.pp_.badVerb
            br 3 (;@1;)
          end
          block  ;; label = @4
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 7
            i64.extend_i32_u
            local.get 0
            i32.const 40
            i32.add
            i32.load8_u
            i32.const 1
            i32.xor
            call $_*fmt.pp_.fmt0x64
            br 3 (;@1;)
          end
          local.get 0
          i32.const 32
          i32.add
          i32.const 71842
          i32.const 5
          call $_*fmt.fmt_.padString
          br 2 (;@1;)
        end
        local.get 0
        local.get 7
        i64.extend_i32_u
        i32.const 1
        call $_*fmt.pp_.fmt0x64
      end
      local.get 0
      i32.const 41
      call $_*fmt.buffer_.writeByte
    end
    i32.const 0
    local.get 6
    i32.store offset=83624
    local.get 5
    i32.const 32
    i32.add
    global.set 0)
  (func $_*fmt.pp_.fmtString (type 7) (param i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.const -113
                    i32.add
                    br_table 6 (;@2;) 1 (;@7;) 3 (;@5;) 1 (;@7;) 1 (;@7;) 2 (;@6;) 1 (;@7;) 4 (;@4;) 0 (;@8;)
                  end
                  local.get 3
                  i32.const 88
                  i32.eq
                  br_if 4 (;@3;)
                end
                local.get 0
                local.get 3
                call $_*fmt.pp_.badVerb
                return
              end
              local.get 0
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              i32.const 32
              i32.add
              local.set 3
              block  ;; label = @6
                local.get 0
                i32.const 44
                i32.add
                i32.load8_u
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                local.get 1
                local.get 2
                call $_*fmt.fmt_.fmtQ
                return
              end
              local.get 3
              local.get 1
              local.get 2
              call $_*fmt.fmt_.fmtS
              return
            end
            local.get 0
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            i32.const 32
            i32.add
            local.get 1
            local.get 2
            call $_*fmt.fmt_.fmtS
            return
          end
          local.get 0
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 32
          i32.add
          local.get 1
          local.get 2
          i32.const 71760
          call $_*fmt.fmt_.fmtSx
          return
        end
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 32
        i32.add
        local.get 1
        local.get 2
        i32.const 71968
        call $_*fmt.fmt_.fmtSx
        return
      end
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 32
      i32.add
      local.get 1
      local.get 2
      call $_*fmt.fmt_.fmtQ
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $_*fmt.fmt_.fmtS (type 5) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i64.const 1
    i64.store offset=20 align=4
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 3
    i32.const 16
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 4
    i32.store offset=16
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    local.get 1
    local.get 2
    call $_*fmt.fmt_.truncateString
    local.get 3
    local.get 3
    i32.load offset=8
    local.tee 1
    i32.store offset=24
    local.get 0
    local.get 1
    local.get 3
    i32.load offset=12
    call $_*fmt.fmt_.padString
    i32.const 0
    local.get 4
    i32.store offset=83624
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func $_*fmt.fmt_.fmtSx (type 7) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    i32.const 0
    i32.const 0
    local.get 3
    call $_*fmt.fmt_.fmtSbx)
  (func $_*fmt.pp_.handleMethods (type 9) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 144
    i32.sub
    local.tee 2
    global.set 0
    i32.const 0
    local.set 3
    local.get 2
    i32.const 0
    i32.store offset=140
    local.get 2
    i64.const 0
    i64.store offset=132 align=4
    local.get 2
    i64.const 0
    i64.store offset=124 align=4
    local.get 2
    i64.const 0
    i64.store offset=116 align=4
    local.get 2
    i64.const 0
    i64.store offset=108 align=4
    local.get 2
    i64.const 0
    i64.store offset=100 align=4
    local.get 2
    i32.const 12
    i32.store offset=92
    local.get 2
    i32.const 0
    i32.store8 offset=23
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 2
    i32.const 88
    i32.add
    i32.store offset=83624
    local.get 2
    local.get 4
    i32.store offset=88
    local.get 2
    local.get 2
    i32.const 23
    i32.add
    i32.store offset=96
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=127
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 1
          i32.const 119
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          i32.const 100
          i32.add
          local.get 0
          i32.const 16
          i32.add
          i32.load
          local.tee 5
          i32.store
          block  ;; label = @4
            local.get 0
            i32.load offset=12
            local.tee 6
            call $error$typeassert
            i32.const 1
            i32.and
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.load8_u offset=128
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 104
            i32.add
            local.get 0
            i32.const 136
            i32.add
            i32.load
            i32.store
            local.get 0
            i32.load offset=132
            br_if 0 (;@4;)
            local.get 0
            local.get 6
            i32.const 0
            local.get 1
            select
            i32.store offset=132
            local.get 0
            local.get 5
            i32.const 0
            local.get 1
            select
            i32.store offset=136
            i32.const 118
            local.set 1
            br 1 (;@3;)
          end
          local.get 0
          i64.const 0
          i64.store offset=132 align=4
          local.get 0
          i32.const 0
          i32.store8 offset=128
          local.get 0
          i32.const 119
          call $_*fmt.pp_.badVerb
          i32.const 0
          local.get 4
          i32.store offset=83624
          local.get 2
          i32.const 144
          i32.add
          global.set 0
          i32.const 1
          return
        end
        local.get 2
        i32.const 108
        i32.add
        local.get 0
        i32.const 16
        i32.add
        i32.load
        i32.store
        block  ;; label = @3
          local.get 0
          i32.const 44
          i32.add
          i32.load8_u
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.const 112
          i32.add
          local.get 0
          i32.load offset=16
          i32.store
          br 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const -113
            i32.add
            local.tee 5
            i32.const 7
            i32.gt_u
            br_if 0 (;@4;)
            i32.const 1
            local.get 5
            i32.shl
            i32.const 165
            i32.and
            br_if 1 (;@3;)
          end
          local.get 1
          i32.const 88
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 2
        i32.const 88
        i32.add
        i32.const 28
        i32.add
        local.get 0
        i32.load offset=16
        local.tee 7
        i32.store
        i32.const 0
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=12
            local.tee 5
            call $error$typeassert
            i32.const 1
            i32.and
            local.tee 6
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 120
            i32.add
            local.get 0
            i32.load offset=16
            local.tee 3
            i32.store
            local.get 2
            i32.const 24
            i32.add
            i32.const 28
            i32.add
            i32.const 5
            i32.store
            local.get 2
            i32.const 40
            i32.add
            local.get 3
            i32.store
            local.get 2
            i32.const 1
            i32.store8 offset=23
            local.get 2
            i32.const 71777
            i32.store offset=48
            local.get 2
            local.get 1
            i32.store offset=44
            local.get 2
            local.get 0
            i32.store offset=32
            local.get 2
            i64.const 0
            i64.store offset=24
            local.get 2
            i32.const 124
            i32.add
            local.get 2
            i32.const 24
            i32.add
            i32.store
            local.get 2
            local.get 0
            i32.load offset=12
            i32.store offset=36
            local.get 2
            local.get 7
            i32.const 0
            local.get 6
            select
            local.get 5
            i32.const 0
            local.get 6
            select
            call $_error_.Error
            local.get 2
            i32.const 128
            i32.add
            local.get 2
            i32.load
            local.tee 3
            i32.store
            local.get 0
            local.get 3
            local.get 2
            i32.load offset=4
            local.get 1
            call $_*fmt.pp_.fmtString
            local.get 2
            i32.const 24
            i32.add
            local.set 0
            loop  ;; label = @5
              local.get 0
              i32.eqz
              br_if 2 (;@3;)
              local.get 0
              i32.load offset=4
              local.set 0
              call $_*fmt.pp_.catchPanic
              br 0 (;@5;)
            end
          end
          block  ;; label = @4
            local.get 5
            i32.const 88
            i32.eq
            local.tee 6
            br_if 0 (;@4;)
            local.get 5
            i32.const 132
            i32.ne
            br_if 2 (;@2;)
          end
          local.get 2
          i32.const 84
          i32.add
          i32.const 6
          i32.store
          local.get 2
          local.get 0
          i32.store offset=64
          local.get 2
          i32.const 132
          i32.add
          local.get 0
          i32.load offset=16
          local.tee 3
          i32.store
          local.get 2
          i32.const 72
          i32.add
          local.get 3
          i32.store
          i32.const 1
          local.set 8
          local.get 2
          i32.const 1
          i32.store8 offset=23
          local.get 2
          i32.const 71782
          i32.store offset=80
          local.get 2
          local.get 1
          i32.store offset=76
          local.get 2
          i64.const 0
          i64.store offset=56
          local.get 2
          i32.const 136
          i32.add
          local.get 2
          i32.const 56
          i32.add
          i32.store
          local.get 2
          local.get 0
          i32.load offset=12
          i32.store offset=68
          i32.const 66056
          local.set 3
          block  ;; label = @4
            local.get 6
            br_if 0 (;@4;)
            local.get 5
            i32.const 132
            i32.ne
            br_if 3 (;@1;)
            local.get 2
            i32.const 8
            i32.add
            local.get 7
            call $_github.com/valyala/fastjson.Type_.String$invoke
            local.get 2
            i32.load offset=12
            local.set 8
            local.get 2
            i32.load offset=8
            local.set 3
          end
          local.get 2
          i32.const 140
          i32.add
          local.get 3
          i32.store
          local.get 0
          local.get 3
          local.get 8
          local.get 1
          call $_*fmt.pp_.fmtString
          local.get 2
          i32.const 56
          i32.add
          local.set 0
          loop  ;; label = @4
            local.get 0
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            i32.load offset=4
            local.set 0
            call $_*fmt.pp_.catchPanic
            br 0 (;@4;)
          end
        end
        i32.const 1
        local.set 3
      end
      i32.const 0
      local.get 4
      i32.store offset=83624
      local.get 2
      i32.const 144
      i32.add
      global.set 0
      local.get 3
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $error$typeassert (type 1) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.const -997
      i32.add
      local.tee 0
      i32.const 22
      i32.rotl
      i32.const 10
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 1047
      local.get 0
      i32.const 10
      i32.shr_u
      i32.const 2047
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      return
    end
    i32.const 0)
  (func $_error_.Error (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 144
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i64.const 68719476736
    i64.store offset=72
    local.get 3
    i64.const 0
    i64.store offset=136
    local.get 3
    i64.const 0
    i64.store offset=128
    local.get 3
    i64.const 0
    i64.store offset=120
    local.get 3
    i64.const 0
    i64.store offset=112
    local.get 3
    i64.const 0
    i64.store offset=104
    local.get 3
    i64.const 0
    i64.store offset=96
    local.get 3
    i64.const 0
    i64.store offset=88
    local.get 3
    i64.const 0
    i64.store offset=80
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 3
    i32.const 72
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 4
    i32.store offset=72
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const -997
                  i32.add
                  i32.const 22
                  i32.rotl
                  br_table 4 (;@3;) 3 (;@4;) 2 (;@5;) 5 (;@2;) 1 (;@6;) 5 (;@2;) 5 (;@2;) 5 (;@2;) 5 (;@2;) 5 (;@2;) 0 (;@7;) 5 (;@2;)
                end
                local.get 1
                i32.eqz
                br_if 4 (;@2;)
                local.get 3
                i32.const 80
                i32.add
                local.get 1
                i32.load
                local.tee 2
                i32.store
                i32.const 0
                local.get 4
                i32.store offset=83624
                local.get 0
                local.get 1
                i32.load offset=4
                i32.store offset=4
                local.get 0
                local.get 2
                i32.store
                local.get 3
                i32.const 144
                i32.add
                global.set 0
                return
              end
              local.get 1
              i32.eqz
              br_if 3 (;@2;)
              local.get 3
              i32.const 84
              i32.add
              local.get 1
              i32.load
              local.tee 2
              i32.store
              i32.const 0
              local.get 4
              i32.store offset=83624
              local.get 0
              local.get 1
              i32.load offset=4
              i32.store offset=4
              local.get 0
              local.get 2
              i32.store
              local.get 3
              i32.const 144
              i32.add
              global.set 0
              return
            end
            local.get 1
            i32.eqz
            br_if 2 (;@2;)
            local.get 3
            i32.const 88
            i32.add
            local.get 1
            i32.load
            local.tee 2
            i32.store
            local.get 3
            i32.const 32
            i32.add
            local.get 2
            local.get 1
            i32.load offset=4
            i32.const 72259
            i32.const 1
            call $runtime.stringConcat
            local.get 3
            i32.const 92
            i32.add
            local.get 3
            i32.load offset=32
            local.tee 2
            i32.store
            local.get 3
            i32.const 96
            i32.add
            local.get 1
            i32.load offset=8
            local.tee 5
            i32.store
            local.get 3
            i32.const 24
            i32.add
            local.get 2
            local.get 3
            i32.load offset=36
            local.get 5
            local.get 1
            i32.load offset=12
            call $runtime.stringConcat
            local.get 3
            i32.const 100
            i32.add
            local.get 3
            i32.load offset=24
            local.tee 2
            i32.store
            local.get 3
            i32.const 16
            i32.add
            local.get 2
            local.get 3
            i32.load offset=28
            i32.const 72260
            i32.const 2
            call $runtime.stringConcat
            local.get 3
            i32.const 104
            i32.add
            local.get 3
            i32.load offset=16
            local.tee 2
            i32.store
            local.get 3
            i32.const 108
            i32.add
            local.get 1
            i32.load offset=20
            local.tee 5
            i32.store
            local.get 3
            i32.load offset=20
            local.set 6
            local.get 3
            i32.const 8
            i32.add
            local.get 5
            local.get 1
            i32.load offset=16
            call $_error_.Error
            local.get 3
            i32.const 112
            i32.add
            local.get 3
            i32.load offset=8
            local.tee 1
            i32.store
            local.get 3
            local.get 2
            local.get 6
            local.get 1
            local.get 3
            i32.load offset=12
            call $runtime.stringConcat
            i32.const 0
            local.get 4
            i32.store offset=83624
            local.get 3
            i32.const 116
            i32.add
            local.get 3
            i32.load
            local.tee 1
            i32.store
            local.get 0
            local.get 1
            i32.store
            local.get 0
            local.get 3
            i32.load offset=4
            i32.store offset=4
            local.get 3
            i32.const 144
            i32.add
            global.set 0
            return
          end
          local.get 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.const 120
          i32.add
          local.get 1
          i32.load
          local.tee 2
          i32.store
          local.get 3
          i32.const 48
          i32.add
          i32.const 71616
          i32.const 30
          local.get 2
          local.get 1
          i32.load offset=4
          call $runtime.stringConcat
          local.get 3
          i32.const 124
          i32.add
          local.get 3
          i32.load offset=48
          local.tee 1
          i32.store
          local.get 3
          i32.const 40
          i32.add
          local.get 1
          local.get 3
          i32.load offset=52
          i32.const 71679
          i32.const 16
          call $runtime.stringConcat
          i32.const 0
          local.get 4
          i32.store offset=83624
          local.get 3
          i32.const 128
          i32.add
          local.get 3
          i32.load offset=40
          local.tee 1
          i32.store
          local.get 0
          local.get 1
          i32.store
          local.get 0
          local.get 3
          i32.load offset=44
          i32.store offset=4
          local.get 3
          i32.const 144
          i32.add
          global.set 0
          return
        end
        local.get 1
        br_if 1 (;@1;)
      end
      call $runtime.nilPanic
      unreachable
    end
    local.get 3
    i32.const 132
    i32.add
    local.get 1
    i32.load
    local.tee 2
    i32.store
    local.get 3
    i32.const 64
    i32.add
    i32.const 71648
    i32.const 31
    local.get 2
    local.get 1
    i32.load offset=4
    call $runtime.stringConcat
    local.get 3
    i32.const 136
    i32.add
    local.get 3
    i32.load offset=64
    local.tee 1
    i32.store
    local.get 3
    i32.const 56
    i32.add
    local.get 1
    local.get 3
    i32.load offset=68
    i32.const 71679
    i32.const 16
    call $runtime.stringConcat
    i32.const 0
    local.get 4
    i32.store offset=83624
    local.get 3
    i32.const 140
    i32.add
    local.get 3
    i32.load offset=56
    local.tee 1
    i32.store
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 3
    i32.load offset=60
    i32.store offset=4
    local.get 3
    i32.const 144
    i32.add
    global.set 0)
  (func $_github.com/valyala/fastjson.Type_.String$invoke (type 4) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=28
    local.get 2
    i32.const 2
    i32.store offset=20
    i32.const 0
    i32.load offset=83624
    local.set 3
    i32.const 0
    local.get 2
    i32.const 16
    i32.add
    i32.store offset=83624
    local.get 2
    local.get 3
    i32.store offset=16
    i32.const 6
    local.set 4
    local.get 2
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=24
    i32.const 70640
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    br_table 4 (;@4;) 7 (;@1;) 6 (;@2;) 0 (;@8;) 1 (;@7;) 2 (;@6;) 3 (;@5;) 5 (;@3;)
                  end
                  i32.const 70651
                  local.set 5
                  br 6 (;@1;)
                end
                i32.const 70657
                local.set 5
                br 5 (;@1;)
              end
              i32.const 4
              local.set 4
              i32.const 72211
              local.set 5
              br 4 (;@1;)
            end
            i32.const 5
            local.set 4
            i32.const 72215
            local.set 5
            br 3 (;@1;)
          end
          i32.const 4
          local.set 4
          i32.const 72220
          local.set 5
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.store offset=12
        local.get 2
        i32.const 132
        i32.store offset=8
        local.get 2
        i32.const 70672
        i32.const 27
        local.get 2
        i32.const 8
        i32.add
        i32.const 1
        i32.const 1
        call $fmt.Errorf
        local.get 2
        i32.const 28
        i32.add
        local.get 2
        i32.load offset=4
        local.tee 0
        i32.store
        local.get 2
        i32.load
        local.get 0
        call $runtime._panic
        unreachable
      end
      i32.const 5
      local.set 4
      i32.const 70646
      local.set 5
    end
    i32.const 0
    local.get 3
    i32.store offset=83624
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 5
    i32.store
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func $github.com/valyala/fastjson.escapeString (type 21) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 6
    global.set 0
    local.get 6
    i32.const 0
    i32.store offset=108
    local.get 6
    i64.const 0
    i64.store offset=100 align=4
    local.get 6
    i64.const 0
    i64.store offset=92 align=4
    local.get 6
    i64.const 6
    i64.store offset=84 align=4
    i32.const 0
    i32.load offset=83624
    local.set 7
    i32.const 0
    local.get 6
    i32.const 80
    i32.add
    i32.store offset=83624
    local.get 6
    local.get 7
    i32.store offset=80
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          local.get 5
          i32.const 34
          call $strings.IndexByte
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.const 92
          call $strings.IndexByte
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          i32.const 0
          local.set 8
          local.get 5
          i32.const 0
          local.get 5
          i32.const 0
          i32.gt_s
          select
          local.set 9
          loop  ;; label = @4
            local.get 9
            local.get 8
            i32.eq
            br_if 2 (;@2;)
            local.get 5
            local.get 8
            i32.eq
            br_if 3 (;@1;)
            local.get 4
            local.get 8
            i32.add
            local.set 10
            local.get 8
            i32.const 1
            i32.add
            local.set 8
            local.get 10
            i32.load8_u
            i32.const 31
            i32.gt_u
            br_if 0 (;@4;)
          end
        end
        local.get 6
        i32.const 8
        i32.add
        local.get 1
        local.get 2
        local.get 3
        local.get 4
        local.get 5
        call $strconv.AppendQuote
        i32.const 0
        local.get 7
        i32.store offset=83624
        local.get 6
        i32.const 88
        i32.add
        local.get 6
        i32.load offset=8
        local.tee 8
        i32.store
        local.get 0
        local.get 6
        i32.load offset=16
        i32.store offset=8
        local.get 0
        local.get 8
        i32.store
        local.get 0
        local.get 6
        i32.load offset=12
        i32.store offset=4
        local.get 6
        i32.const 112
        i32.add
        global.set 0
        return
      end
      local.get 6
      i32.const 0
      i32.store offset=76
      local.get 6
      i32.const 92
      i32.add
      local.get 6
      i32.const 76
      i32.add
      i32.store
      local.get 6
      i32.const 34
      i32.store8 offset=76
      local.get 6
      i32.const 56
      i32.add
      local.get 1
      local.get 6
      i32.const 76
      i32.add
      local.get 2
      local.get 3
      i32.const 1
      i32.const 1
      call $runtime.sliceAppend
      local.get 6
      i32.const 96
      i32.add
      local.get 6
      i32.load offset=56
      local.tee 8
      i32.store
      local.get 6
      i32.const 40
      i32.add
      local.get 8
      local.get 4
      local.get 6
      i32.load offset=60
      local.get 6
      i32.load offset=64
      local.get 5
      i32.const 1
      call $runtime.sliceAppend
      local.get 6
      i32.const 100
      i32.add
      local.get 6
      i32.load offset=40
      local.tee 8
      i32.store
      local.get 6
      i32.const 0
      i32.store offset=72
      local.get 6
      i32.const 104
      i32.add
      local.get 6
      i32.const 72
      i32.add
      i32.store
      local.get 6
      i32.const 34
      i32.store8 offset=72
      local.get 6
      i32.const 24
      i32.add
      local.get 8
      local.get 6
      i32.const 72
      i32.add
      local.get 6
      i32.load offset=44
      local.get 6
      i32.load offset=48
      i32.const 1
      i32.const 1
      call $runtime.sliceAppend
      i32.const 0
      local.get 7
      i32.store offset=83624
      local.get 6
      i32.const 108
      i32.add
      local.get 6
      i32.load offset=24
      local.tee 8
      i32.store
      local.get 0
      local.get 6
      i32.load offset=32
      i32.store offset=8
      local.get 0
      local.get 8
      i32.store
      local.get 0
      local.get 6
      i32.load offset=28
      i32.store offset=4
      local.get 6
      i32.const 112
      i32.add
      global.set 0
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $github.com/valyala/fastjson.skipWS (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        local.tee 3
        i32.const 32
        i32.gt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const -9
        i32.add
        local.tee 3
        i32.const 23
        i32.gt_u
        br_if 1 (;@1;)
        i32.const 1
        local.get 3
        i32.shl
        i32.const 8388627
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.const 1
        local.get 2
        i32.const 1
        i32.gt_u
        select
        local.set 4
        local.get 2
        i32.const 1
        local.get 2
        i32.const 1
        i32.gt_s
        select
        local.set 5
        i32.const 1
        local.set 3
        loop  ;; label = @3
          block  ;; label = @4
            local.get 5
            local.get 3
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.set 2
            i32.const 72144
            local.set 1
            br 3 (;@1;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              local.get 3
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 1
                local.get 3
                i32.add
                local.tee 6
                i32.load8_u
                i32.const -9
                i32.add
                local.tee 7
                i32.const 23
                i32.gt_u
                br_if 0 (;@6;)
                i32.const 1
                local.get 7
                i32.shl
                i32.const 8388627
                i32.and
                br_if 2 (;@4;)
              end
              block  ;; label = @6
                local.get 3
                local.get 2
                i32.gt_u
                br_if 0 (;@6;)
                local.get 2
                local.get 3
                i32.sub
                local.set 2
                local.get 6
                local.set 1
                br 5 (;@1;)
              end
              call $runtime.slicePanic
              unreachable
            end
            call $runtime.lookupPanic
            unreachable
          end
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          br 0 (;@3;)
        end
      end
      local.get 0
      local.get 2
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      return
    end
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4)
  (func $_*github.com/valyala/fastjson.cache_.getValue (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 144
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i64.const 0
    i64.store offset=132 align=4
    local.get 1
    i64.const 0
    i64.store offset=124 align=4
    local.get 1
    i64.const 0
    i64.store offset=116 align=4
    local.get 1
    i64.const 0
    i64.store offset=108 align=4
    local.get 1
    i64.const 9
    i64.store offset=100 align=4
    i32.const 0
    i32.load offset=83624
    local.set 2
    i32.const 0
    local.get 1
    i32.const 96
    i32.add
    i32.store offset=83624
    local.get 1
    local.get 2
    i32.store offset=96
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 104
          i32.add
          local.get 0
          i32.load
          local.tee 3
          i32.store
          local.get 1
          i32.const 108
          i32.add
          local.get 3
          i32.store
          local.get 1
          i32.const 112
          i32.add
          local.get 3
          i32.store
          block  ;; label = @4
            local.get 0
            i32.load offset=8
            local.tee 4
            local.get 0
            i32.load offset=4
            local.tee 5
            i32.le_s
            br_if 0 (;@4;)
            local.get 1
            i32.const 116
            i32.add
            local.get 0
            i32.load
            i32.store
            local.get 0
            i32.load offset=4
            i32.const 1
            i32.add
            local.tee 5
            local.get 4
            i32.gt_u
            br_if 2 (;@2;)
            br 3 (;@1;)
          end
          local.get 1
          i32.const 16
          i32.add
          i32.const 24
          i32.add
          i64.const 0
          i64.store
          local.get 1
          i32.const 16
          i32.add
          i32.const 32
          i32.add
          i64.const 0
          i64.store
          local.get 1
          i64.const 0
          i64.store offset=16
          local.get 1
          i64.const 0
          i64.store offset=21 align=1
          local.get 1
          i64.const 0
          i64.store offset=32
          local.get 1
          i32.const 96
          i32.add
          i32.const 32
          i32.add
          local.get 1
          i32.const 16
          i32.add
          i32.store
          local.get 1
          i32.const 132
          i32.add
          local.get 1
          i32.const 56
          i32.add
          i32.store
          local.get 1
          i32.const 56
          i32.add
          i32.const 0
          i32.const 40
          call $memset
          drop
          local.get 1
          i32.const 56
          i32.add
          i32.const 24
          i32.add
          i64.const 0
          i64.store
          local.get 1
          i32.const 56
          i32.add
          i32.const 32
          i32.add
          i64.const 0
          i64.store
          local.get 1
          i64.const 0
          i64.store offset=61 align=1
          local.get 1
          i64.const 0
          i64.store offset=56
          local.get 1
          i64.const 0
          i64.store offset=72
          local.get 1
          local.get 3
          local.get 1
          i32.const 56
          i32.add
          local.get 5
          local.get 4
          i32.const 1
          i32.const 40
          call $runtime.sliceAppend
          local.get 1
          i32.const 96
          i32.add
          i32.const 40
          i32.add
          local.get 1
          i32.load
          local.tee 3
          i32.store
          local.get 1
          i32.load offset=8
          local.set 4
          local.get 1
          i32.load offset=4
          local.set 5
          br 2 (;@1;)
        end
        call $runtime.nilPanic
        unreachable
      end
      call $runtime.slicePanic
      unreachable
    end
    local.get 0
    local.get 3
    i32.store
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 1
    i32.const 120
    i32.add
    local.get 3
    i32.store
    local.get 1
    i32.const 124
    i32.add
    local.get 0
    i32.load
    i32.store
    block  ;; label = @1
      local.get 5
      i32.const -1
      i32.add
      local.tee 0
      local.get 5
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      local.get 2
      i32.store offset=83624
      local.get 1
      i32.const 144
      i32.add
      global.set 0
      local.get 3
      local.get 0
      i32.const 40
      i32.mul
      i32.add
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $github.com/valyala/fastjson.parseValue (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 864
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    i64.const 0
    i64.store offset=720
    local.get 5
    i64.const 0
    i64.store offset=712
    local.get 5
    i64.const 0
    i64.store offset=704
    local.get 5
    i64.const 0
    i64.store offset=696
    local.get 5
    i64.const 0
    i64.store offset=688
    local.get 5
    i64.const 0
    i64.store offset=680
    local.get 5
    i64.const 0
    i64.store offset=672
    local.get 5
    i64.const 0
    i64.store offset=664
    local.get 5
    i64.const 0
    i64.store offset=656
    local.get 5
    i64.const 0
    i64.store offset=648
    local.get 5
    i64.const 0
    i64.store offset=640
    local.get 5
    i64.const 0
    i64.store offset=632
    local.get 5
    i64.const 0
    i64.store offset=624
    local.get 5
    i64.const 0
    i64.store offset=616
    local.get 5
    i64.const 0
    i64.store offset=608
    local.get 5
    i64.const 0
    i64.store offset=600
    local.get 5
    i64.const 0
    i64.store offset=592
    local.get 5
    i64.const 0
    i64.store offset=584
    local.get 5
    i64.const 0
    i64.store offset=576
    local.get 5
    i64.const 0
    i64.store offset=568
    local.get 5
    i64.const 0
    i64.store offset=560
    local.get 5
    i64.const 0
    i64.store offset=552
    local.get 5
    i64.const 0
    i64.store offset=544
    local.get 5
    i64.const 0
    i64.store offset=536
    local.get 5
    i64.const 0
    i64.store offset=528
    local.get 5
    i64.const 0
    i64.store offset=520
    local.get 5
    i64.const 0
    i64.store offset=512
    local.get 5
    i64.const 0
    i64.store offset=504
    local.get 5
    i64.const 0
    i64.store offset=496
    local.get 5
    i64.const 0
    i64.store offset=488
    local.get 5
    i64.const 0
    i64.store offset=480
    local.get 5
    i64.const 412316860416
    i64.store offset=472
    local.get 5
    i64.const 0
    i64.store offset=856
    local.get 5
    i64.const 0
    i64.store offset=848
    local.get 5
    i64.const 0
    i64.store offset=840
    local.get 5
    i64.const 0
    i64.store offset=832
    local.get 5
    i64.const 0
    i64.store offset=824
    local.get 5
    i64.const 0
    i64.store offset=816
    local.get 5
    i64.const 0
    i64.store offset=808
    local.get 5
    i64.const 0
    i64.store offset=800
    local.get 5
    i64.const 0
    i64.store offset=792
    local.get 5
    i64.const 0
    i64.store offset=784
    local.get 5
    i64.const 0
    i64.store offset=776
    local.get 5
    i64.const 0
    i64.store offset=768
    local.get 5
    i64.const 0
    i64.store offset=760
    local.get 5
    i64.const 0
    i64.store offset=752
    local.get 5
    i64.const 0
    i64.store offset=744
    local.get 5
    i64.const 0
    i64.store offset=736
    local.get 5
    i64.const 0
    i64.store offset=728
    local.get 5
    i32.const 0
    i32.load offset=83624
    local.tee 6
    i32.store offset=472
    i32.const 0
    local.get 5
    i32.const 472
    i32.add
    i32.store offset=83624
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    local.get 2
                                                    i32.eqz
                                                    br_if 0 (;@24;)
                                                    block  ;; label = @25
                                                      local.get 4
                                                      i32.const 1
                                                      i32.add
                                                      local.tee 7
                                                      i32.const 301
                                                      i32.lt_s
                                                      br_if 0 (;@25;)
                                                      local.get 5
                                                      i64.const 4
                                                      i64.store offset=424 align=4
                                                      local.get 5
                                                      i32.const 484
                                                      i32.add
                                                      local.get 5
                                                      i32.const 424
                                                      i32.add
                                                      i32.store
                                                      local.get 5
                                                      i32.const 300
                                                      i32.store offset=428
                                                      local.get 5
                                                      i32.const 8
                                                      i32.add
                                                      i32.const 71152
                                                      i32.const 48
                                                      local.get 5
                                                      i32.const 424
                                                      i32.add
                                                      i32.const 1
                                                      i32.const 1
                                                      call $fmt.Errorf
                                                      i32.const 0
                                                      local.get 6
                                                      i32.store offset=83624
                                                      local.get 5
                                                      i32.const 488
                                                      i32.add
                                                      local.get 5
                                                      i32.load offset=12
                                                      local.tee 4
                                                      i32.store
                                                      local.get 5
                                                      i32.load offset=8
                                                      local.set 6
                                                      local.get 0
                                                      local.get 4
                                                      i32.store offset=16
                                                      local.get 0
                                                      local.get 2
                                                      i32.store offset=8
                                                      local.get 0
                                                      i32.const 0
                                                      i32.store
                                                      local.get 0
                                                      local.get 6
                                                      i32.store offset=12
                                                      local.get 0
                                                      local.get 1
                                                      i32.store offset=4
                                                      local.get 5
                                                      i32.const 864
                                                      i32.add
                                                      global.set 0
                                                      return
                                                    end
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          local.get 1
                                                          local.tee 8
                                                          i32.load8_u
                                                          local.tee 9
                                                          i32.const 109
                                                          i32.gt_s
                                                          br_if 0 (;@27;)
                                                          local.get 9
                                                          i32.const 34
                                                          i32.eq
                                                          br_if 2 (;@25;)
                                                          local.get 9
                                                          i32.const 91
                                                          i32.eq
                                                          br_if 1 (;@26;)
                                                          local.get 9
                                                          i32.const 102
                                                          i32.eq
                                                          br_if 23 (;@4;)
                                                          br 14 (;@13;)
                                                        end
                                                        local.get 9
                                                        i32.const 110
                                                        i32.eq
                                                        br_if 20 (;@6;)
                                                        local.get 9
                                                        i32.const 116
                                                        i32.eq
                                                        br_if 23 (;@3;)
                                                        local.get 9
                                                        i32.const 123
                                                        i32.ne
                                                        br_if 13 (;@13;)
                                                        local.get 5
                                                        i32.const 672
                                                        i32.add
                                                        local.get 5
                                                        i32.const 432
                                                        i32.add
                                                        i32.store
                                                        local.get 5
                                                        i32.const 688
                                                        i32.add
                                                        local.get 5
                                                        i32.const 440
                                                        i32.add
                                                        i32.store
                                                        local.get 5
                                                        i32.const 200
                                                        i32.add
                                                        local.get 1
                                                        i32.const 1
                                                        i32.add
                                                        local.get 2
                                                        i32.const -1
                                                        i32.add
                                                        call $github.com/valyala/fastjson.skipWS
                                                        local.get 5
                                                        i32.const 612
                                                        i32.add
                                                        local.get 5
                                                        i32.load offset=200
                                                        local.tee 1
                                                        i32.store
                                                        block  ;; label = @27
                                                          local.get 5
                                                          i32.load offset=204
                                                          local.tee 8
                                                          br_if 0 (;@27;)
                                                          i32.const 0
                                                          local.set 9
                                                          local.get 5
                                                          i32.const 40
                                                          i32.add
                                                          i32.const 70813
                                                          i32.const 11
                                                          i32.const 0
                                                          i32.const 0
                                                          i32.const 0
                                                          call $fmt.Errorf
                                                          local.get 5
                                                          i32.const 616
                                                          i32.add
                                                          local.get 5
                                                          i32.load offset=44
                                                          local.tee 4
                                                          i32.store
                                                          local.get 5
                                                          i32.load offset=40
                                                          local.set 2
                                                          br 13 (;@14;)
                                                        end
                                                        local.get 1
                                                        i32.load8_u
                                                        local.set 4
                                                        local.get 5
                                                        i32.const 708
                                                        i32.add
                                                        local.get 3
                                                        call $_*github.com/valyala/fastjson.cache_.getValue
                                                        local.tee 9
                                                        i32.store
                                                        block  ;; label = @27
                                                          local.get 4
                                                          i32.const 125
                                                          i32.ne
                                                          br_if 0 (;@27;)
                                                          local.get 9
                                                          i32.eqz
                                                          br_if 22 (;@5;)
                                                          local.get 9
                                                          i32.const 1
                                                          i32.store offset=36
                                                          local.get 9
                                                          call $_*github.com/valyala/fastjson.Object_.reset
                                                          local.get 8
                                                          i32.const -1
                                                          i32.add
                                                          local.set 8
                                                          local.get 1
                                                          i32.const 1
                                                          i32.add
                                                          local.set 1
                                                          br 10 (;@17;)
                                                        end
                                                        local.get 9
                                                        i32.eqz
                                                        br_if 21 (;@5;)
                                                        local.get 9
                                                        i32.const 1
                                                        i32.store offset=36
                                                        local.get 9
                                                        call $_*github.com/valyala/fastjson.Object_.reset
                                                        local.get 5
                                                        i32.const 648
                                                        i32.add
                                                        local.get 5
                                                        i32.const 448
                                                        i32.add
                                                        i32.store
                                                        local.get 5
                                                        i32.const 652
                                                        i32.add
                                                        local.get 5
                                                        i32.const 460
                                                        i32.add
                                                        i32.store
                                                        local.get 5
                                                        i32.const 620
                                                        i32.add
                                                        local.set 10
                                                        local.get 5
                                                        i32.const 624
                                                        i32.add
                                                        local.set 11
                                                        local.get 5
                                                        i32.const 628
                                                        i32.add
                                                        local.set 12
                                                        local.get 5
                                                        i32.const 632
                                                        i32.add
                                                        local.set 13
                                                        local.get 5
                                                        i32.const 636
                                                        i32.add
                                                        local.set 14
                                                        local.get 5
                                                        i32.const 640
                                                        i32.add
                                                        local.set 15
                                                        local.get 5
                                                        i32.const 644
                                                        i32.add
                                                        local.set 16
                                                        local.get 5
                                                        i32.const 660
                                                        i32.add
                                                        local.set 17
                                                        local.get 5
                                                        i32.const 664
                                                        i32.add
                                                        local.set 18
                                                        local.get 5
                                                        i32.const 724
                                                        i32.add
                                                        local.set 19
                                                        local.get 5
                                                        i32.const 736
                                                        i32.add
                                                        local.set 20
                                                        local.get 5
                                                        i32.const 732
                                                        i32.add
                                                        local.set 21
                                                        local.get 5
                                                        i32.const 728
                                                        i32.add
                                                        local.set 22
                                                        local.get 5
                                                        i32.const 680
                                                        i32.add
                                                        local.set 23
                                                        local.get 5
                                                        i32.const 740
                                                        i32.add
                                                        local.set 24
                                                        local.get 5
                                                        i32.const 752
                                                        i32.add
                                                        local.set 25
                                                        local.get 5
                                                        i32.const 748
                                                        i32.add
                                                        local.set 26
                                                        local.get 5
                                                        i32.const 744
                                                        i32.add
                                                        local.set 27
                                                        local.get 5
                                                        i32.const 696
                                                        i32.add
                                                        local.set 28
                                                        local.get 5
                                                        i32.const 720
                                                        i32.add
                                                        local.set 29
                                                        local.get 5
                                                        i32.const 716
                                                        i32.add
                                                        local.set 30
                                                        local.get 5
                                                        i32.const 712
                                                        i32.add
                                                        local.set 31
                                                        local.get 5
                                                        i32.const 656
                                                        i32.add
                                                        local.set 32
                                                        br 8 (;@18;)
                                                      end
                                                      local.get 5
                                                      i32.const 796
                                                      i32.add
                                                      local.get 5
                                                      i32.const 432
                                                      i32.add
                                                      i32.store
                                                      local.get 5
                                                      i32.const 828
                                                      i32.add
                                                      local.get 5
                                                      i32.const 460
                                                      i32.add
                                                      i32.store
                                                      local.get 5
                                                      i32.const 304
                                                      i32.add
                                                      local.get 1
                                                      i32.const 1
                                                      i32.add
                                                      local.get 2
                                                      i32.const -1
                                                      i32.add
                                                      call $github.com/valyala/fastjson.skipWS
                                                      local.get 5
                                                      i32.const 768
                                                      i32.add
                                                      local.get 5
                                                      i32.load offset=304
                                                      local.tee 4
                                                      i32.store
                                                      block  ;; label = @26
                                                        local.get 5
                                                        i32.load offset=308
                                                        local.tee 2
                                                        br_if 0 (;@26;)
                                                        i32.const 0
                                                        local.set 1
                                                        local.get 5
                                                        i32.const 216
                                                        i32.add
                                                        i32.const 70699
                                                        i32.const 11
                                                        i32.const 0
                                                        i32.const 0
                                                        i32.const 0
                                                        call $fmt.Errorf
                                                        local.get 5
                                                        i32.const 772
                                                        i32.add
                                                        local.get 5
                                                        i32.load offset=220
                                                        local.tee 33
                                                        i32.store
                                                        local.get 5
                                                        i32.load offset=216
                                                        local.set 3
                                                        br 7 (;@19;)
                                                      end
                                                      local.get 4
                                                      i32.load8_u
                                                      local.set 33
                                                      local.get 5
                                                      i32.const 812
                                                      i32.add
                                                      local.get 3
                                                      call $_*github.com/valyala/fastjson.cache_.getValue
                                                      local.tee 1
                                                      i32.store
                                                      block  ;; label = @26
                                                        local.get 33
                                                        i32.const 93
                                                        i32.ne
                                                        br_if 0 (;@26;)
                                                        local.get 1
                                                        i32.eqz
                                                        br_if 21 (;@5;)
                                                        local.get 1
                                                        i32.const 2
                                                        i32.store offset=36
                                                        local.get 1
                                                        i32.const 24
                                                        i32.add
                                                        local.tee 33
                                                        i32.load
                                                        local.set 3
                                                        local.get 5
                                                        i32.const 816
                                                        i32.add
                                                        local.get 1
                                                        i32.load offset=16
                                                        local.tee 34
                                                        i32.store
                                                        local.get 33
                                                        local.get 3
                                                        i32.store
                                                        i32.const 0
                                                        local.set 3
                                                        local.get 1
                                                        i32.const 20
                                                        i32.add
                                                        i32.const 0
                                                        i32.store
                                                        local.get 1
                                                        local.get 34
                                                        i32.store offset=16
                                                        local.get 2
                                                        i32.const -1
                                                        i32.add
                                                        local.set 2
                                                        local.get 4
                                                        i32.const 1
                                                        i32.add
                                                        local.set 4
                                                        br 5 (;@21;)
                                                      end
                                                      local.get 1
                                                      i32.eqz
                                                      br_if 20 (;@5;)
                                                      local.get 1
                                                      i32.const 2
                                                      i32.store offset=36
                                                      local.get 1
                                                      i32.const 24
                                                      i32.add
                                                      local.tee 33
                                                      i32.load
                                                      local.set 34
                                                      local.get 5
                                                      i32.const 820
                                                      i32.add
                                                      local.get 1
                                                      i32.load offset=16
                                                      local.tee 9
                                                      i32.store
                                                      local.get 33
                                                      local.get 34
                                                      i32.store
                                                      local.get 1
                                                      i32.const 20
                                                      i32.add
                                                      i32.const 0
                                                      i32.store
                                                      local.get 1
                                                      local.get 9
                                                      i32.store offset=16
                                                      local.get 5
                                                      i32.const 776
                                                      i32.add
                                                      local.set 9
                                                      local.get 5
                                                      i32.const 780
                                                      i32.add
                                                      local.set 35
                                                      local.get 5
                                                      i32.const 792
                                                      i32.add
                                                      local.set 8
                                                      local.get 5
                                                      i32.const 788
                                                      i32.add
                                                      local.set 36
                                                      local.get 5
                                                      i32.const 784
                                                      i32.add
                                                      local.set 37
                                                      local.get 5
                                                      i32.const 824
                                                      i32.add
                                                      local.set 10
                                                      local.get 5
                                                      i32.const 832
                                                      i32.add
                                                      local.set 11
                                                      local.get 5
                                                      i32.const 836
                                                      i32.add
                                                      local.set 12
                                                      br 3 (;@22;)
                                                    end
                                                    local.get 5
                                                    i32.const 320
                                                    i32.add
                                                    local.get 1
                                                    i32.const 1
                                                    i32.add
                                                    local.get 2
                                                    i32.const -1
                                                    i32.add
                                                    call $github.com/valyala/fastjson.parseRawString
                                                    local.get 5
                                                    i32.const 860
                                                    i32.add
                                                    local.get 5
                                                    i32.load offset=340
                                                    local.tee 4
                                                    i32.store
                                                    local.get 5
                                                    i32.const 856
                                                    i32.add
                                                    local.get 5
                                                    i32.load offset=328
                                                    local.tee 1
                                                    i32.store
                                                    local.get 5
                                                    i32.const 852
                                                    i32.add
                                                    local.get 5
                                                    i32.load offset=320
                                                    local.tee 34
                                                    i32.store
                                                    local.get 5
                                                    i32.load offset=332
                                                    local.set 2
                                                    local.get 5
                                                    i32.load offset=336
                                                    local.tee 33
                                                    br_if 1 (;@23;)
                                                    local.get 5
                                                    i32.load offset=324
                                                    local.set 33
                                                    local.get 5
                                                    i32.const 516
                                                    i32.add
                                                    local.get 3
                                                    call $_*github.com/valyala/fastjson.cache_.getValue
                                                    local.tee 4
                                                    i32.store
                                                    local.get 4
                                                    i32.eqz
                                                    br_if 19 (;@5;)
                                                    local.get 4
                                                    local.get 34
                                                    i32.store offset=28
                                                    local.get 4
                                                    i32.const 7
                                                    i32.store offset=36
                                                    i32.const 0
                                                    local.get 6
                                                    i32.store offset=83624
                                                    local.get 4
                                                    i32.const 32
                                                    i32.add
                                                    local.get 33
                                                    i32.store
                                                    local.get 0
                                                    i64.const 0
                                                    i64.store offset=12 align=4
                                                    local.get 0
                                                    local.get 2
                                                    i32.store offset=8
                                                    local.get 0
                                                    local.get 1
                                                    i32.store offset=4
                                                    local.get 0
                                                    local.get 4
                                                    i32.store
                                                    local.get 5
                                                    i32.const 864
                                                    i32.add
                                                    global.set 0
                                                    return
                                                  end
                                                  local.get 5
                                                  i32.const 71120
                                                  i32.const 25
                                                  i32.const 0
                                                  i32.const 0
                                                  i32.const 0
                                                  call $fmt.Errorf
                                                  i32.const 0
                                                  local.get 6
                                                  i32.store offset=83624
                                                  local.get 5
                                                  i32.const 480
                                                  i32.add
                                                  local.get 5
                                                  i32.load offset=4
                                                  local.tee 4
                                                  i32.store
                                                  local.get 5
                                                  i32.load
                                                  local.set 6
                                                  local.get 0
                                                  local.get 4
                                                  i32.store offset=16
                                                  local.get 0
                                                  local.get 2
                                                  i32.store offset=8
                                                  local.get 0
                                                  i32.const 0
                                                  i32.store
                                                  local.get 0
                                                  local.get 6
                                                  i32.store offset=12
                                                  local.get 0
                                                  local.get 1
                                                  i32.store offset=4
                                                  local.get 5
                                                  i32.const 864
                                                  i32.add
                                                  global.set 0
                                                  return
                                                end
                                                local.get 5
                                                local.get 4
                                                i32.store offset=404
                                                local.get 5
                                                local.get 33
                                                i32.store offset=400
                                                local.get 5
                                                i32.const 508
                                                i32.add
                                                local.get 5
                                                i32.const 400
                                                i32.add
                                                i32.store
                                                local.get 5
                                                i32.const 312
                                                i32.add
                                                i32.const 71264
                                                i32.const 23
                                                local.get 5
                                                i32.const 400
                                                i32.add
                                                i32.const 1
                                                i32.const 1
                                                call $fmt.Errorf
                                                i32.const 0
                                                local.get 6
                                                i32.store offset=83624
                                                local.get 5
                                                i32.const 512
                                                i32.add
                                                local.get 5
                                                i32.load offset=316
                                                local.tee 4
                                                i32.store
                                                local.get 5
                                                i32.load offset=312
                                                local.set 6
                                                local.get 0
                                                local.get 4
                                                i32.store offset=16
                                                local.get 0
                                                local.get 2
                                                i32.store offset=8
                                                local.get 0
                                                i32.const 0
                                                i32.store
                                                local.get 0
                                                local.get 6
                                                i32.store offset=12
                                                local.get 0
                                                local.get 1
                                                i32.store offset=4
                                                local.get 5
                                                i32.const 864
                                                i32.add
                                                global.set 0
                                                return
                                              end
                                              loop  ;; label = @22
                                                local.get 9
                                                local.get 4
                                                i32.store
                                                local.get 5
                                                i32.const 296
                                                i32.add
                                                local.get 4
                                                local.get 2
                                                call $github.com/valyala/fastjson.skipWS
                                                local.get 35
                                                local.get 5
                                                i32.load offset=296
                                                local.tee 4
                                                i32.store
                                                local.get 5
                                                i32.const 272
                                                i32.add
                                                local.get 4
                                                local.get 5
                                                i32.load offset=300
                                                local.get 3
                                                local.get 7
                                                call $github.com/valyala/fastjson.parseValue
                                                local.get 8
                                                local.get 5
                                                i32.load offset=288
                                                local.tee 34
                                                i32.store
                                                local.get 36
                                                local.get 5
                                                i32.load offset=276
                                                local.tee 4
                                                i32.store
                                                local.get 37
                                                local.get 5
                                                i32.load offset=272
                                                local.tee 33
                                                i32.store
                                                local.get 5
                                                i32.load offset=280
                                                local.set 2
                                                block  ;; label = @23
                                                  local.get 5
                                                  i32.load offset=284
                                                  local.tee 13
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                  local.get 5
                                                  local.get 13
                                                  i32.store offset=432
                                                  local.get 5
                                                  local.get 34
                                                  i32.store offset=436
                                                  local.get 5
                                                  i32.const 264
                                                  i32.add
                                                  i32.const 70720
                                                  i32.const 28
                                                  local.get 5
                                                  i32.const 432
                                                  i32.add
                                                  i32.const 1
                                                  i32.const 1
                                                  call $fmt.Errorf
                                                  local.get 5
                                                  i32.const 800
                                                  i32.add
                                                  local.get 5
                                                  i32.load offset=268
                                                  local.tee 33
                                                  i32.store
                                                  local.get 5
                                                  i32.load offset=264
                                                  local.set 3
                                                  i32.const 0
                                                  local.set 1
                                                  br 4 (;@19;)
                                                end
                                                local.get 10
                                                local.get 1
                                                i32.load offset=16
                                                local.tee 34
                                                i32.store
                                                local.get 5
                                                local.get 33
                                                i32.store offset=460
                                                local.get 5
                                                i32.const 248
                                                i32.add
                                                local.get 34
                                                local.get 5
                                                i32.const 460
                                                i32.add
                                                local.get 1
                                                i32.load offset=20
                                                local.get 1
                                                i32.load offset=24
                                                i32.const 1
                                                i32.const 4
                                                call $runtime.sliceAppend
                                                local.get 11
                                                local.get 5
                                                i32.load offset=248
                                                local.tee 33
                                                i32.store
                                                local.get 5
                                                i64.load offset=252 align=4
                                                local.set 38
                                                local.get 1
                                                local.get 33
                                                i32.store offset=16
                                                local.get 1
                                                local.get 38
                                                i64.store offset=20 align=4
                                                local.get 5
                                                i32.const 240
                                                i32.add
                                                local.get 4
                                                local.get 2
                                                call $github.com/valyala/fastjson.skipWS
                                                local.get 12
                                                local.get 5
                                                i32.load offset=240
                                                local.tee 4
                                                i32.store
                                                local.get 5
                                                i32.load offset=244
                                                local.tee 2
                                                i32.eqz
                                                br_if 2 (;@20;)
                                                block  ;; label = @23
                                                  local.get 4
                                                  i32.load8_u
                                                  local.tee 33
                                                  i32.const 44
                                                  i32.ne
                                                  br_if 0 (;@23;)
                                                  local.get 2
                                                  i32.const -1
                                                  i32.add
                                                  local.set 2
                                                  local.get 4
                                                  i32.const 1
                                                  i32.add
                                                  local.set 4
                                                  br 1 (;@22;)
                                                end
                                              end
                                              block  ;; label = @22
                                                local.get 33
                                                i32.const 93
                                                i32.eq
                                                br_if 0 (;@22;)
                                                i32.const 0
                                                local.set 1
                                                local.get 5
                                                i32.const 232
                                                i32.add
                                                i32.const 70784
                                                i32.const 29
                                                i32.const 0
                                                i32.const 0
                                                i32.const 0
                                                call $fmt.Errorf
                                                local.get 5
                                                i32.const 808
                                                i32.add
                                                local.get 5
                                                i32.load offset=236
                                                local.tee 33
                                                i32.store
                                                local.get 5
                                                i32.load offset=232
                                                local.set 3
                                                br 3 (;@19;)
                                              end
                                              local.get 4
                                              i32.const 1
                                              i32.add
                                              local.set 4
                                              local.get 2
                                              i32.const -1
                                              i32.add
                                              local.set 2
                                              i32.const 0
                                              local.set 3
                                            end
                                            i32.const 0
                                            local.set 33
                                            br 1 (;@19;)
                                          end
                                          i32.const 0
                                          local.set 1
                                          local.get 5
                                          i32.const 224
                                          i32.add
                                          i32.const 70752
                                          i32.const 23
                                          i32.const 0
                                          i32.const 0
                                          i32.const 0
                                          call $fmt.Errorf
                                          local.get 5
                                          i32.const 804
                                          i32.add
                                          local.get 5
                                          i32.load offset=228
                                          local.tee 33
                                          i32.store
                                          local.get 5
                                          i32.load offset=224
                                          local.set 3
                                          i32.const 0
                                          local.set 2
                                        end
                                        local.get 5
                                        i32.const 844
                                        i32.add
                                        local.get 4
                                        i32.store
                                        local.get 5
                                        i32.const 840
                                        i32.add
                                        local.get 1
                                        i32.store
                                        local.get 5
                                        i32.const 848
                                        i32.add
                                        local.get 33
                                        i32.store
                                        local.get 3
                                        i32.eqz
                                        br_if 16 (;@2;)
                                        local.get 5
                                        local.get 33
                                        i32.store offset=412
                                        local.get 5
                                        local.get 3
                                        i32.store offset=408
                                        local.get 5
                                        i32.const 500
                                        i32.add
                                        local.get 5
                                        i32.const 408
                                        i32.add
                                        i32.store
                                        local.get 5
                                        i32.const 208
                                        i32.add
                                        i32.const 71232
                                        i32.const 22
                                        local.get 5
                                        i32.const 408
                                        i32.add
                                        i32.const 1
                                        i32.const 1
                                        call $fmt.Errorf
                                        i32.const 0
                                        local.get 6
                                        i32.store offset=83624
                                        local.get 5
                                        i32.const 504
                                        i32.add
                                        local.get 5
                                        i32.load offset=212
                                        local.tee 1
                                        i32.store
                                        local.get 5
                                        i32.load offset=208
                                        local.set 6
                                        local.get 0
                                        local.get 1
                                        i32.store offset=16
                                        local.get 0
                                        local.get 2
                                        i32.store offset=8
                                        local.get 0
                                        i32.const 0
                                        i32.store
                                        local.get 0
                                        local.get 6
                                        i32.store offset=12
                                        local.get 0
                                        local.get 4
                                        i32.store offset=4
                                        local.get 5
                                        i32.const 864
                                        i32.add
                                        global.set 0
                                        return
                                      end
                                      loop  ;; label = @18
                                        local.get 10
                                        local.get 1
                                        i32.store
                                        local.get 11
                                        local.get 9
                                        i32.load
                                        i32.store
                                        local.get 9
                                        i32.load offset=8
                                        local.set 34
                                        local.get 12
                                        local.get 9
                                        i32.load
                                        i32.store
                                        local.get 9
                                        i32.load offset=8
                                        local.set 2
                                        local.get 9
                                        i32.load offset=4
                                        local.set 33
                                        local.get 13
                                        local.get 9
                                        i32.load
                                        local.tee 4
                                        i32.store
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            local.get 34
                                            local.get 33
                                            i32.le_s
                                            br_if 0 (;@20;)
                                            local.get 14
                                            local.get 9
                                            i32.load
                                            i32.store
                                            local.get 9
                                            i32.load offset=4
                                            i32.const 1
                                            i32.add
                                            local.tee 33
                                            local.get 2
                                            i32.gt_u
                                            br_if 10 (;@10;)
                                            br 1 (;@19;)
                                          end
                                          local.get 5
                                          i32.const 0
                                          i32.store offset=456
                                          local.get 5
                                          i64.const 0
                                          i64.store offset=448
                                          local.get 5
                                          i32.const 0
                                          i32.store offset=468
                                          local.get 5
                                          i64.const 0
                                          i64.store offset=460 align=4
                                          local.get 5
                                          i32.const 184
                                          i32.add
                                          local.get 4
                                          local.get 5
                                          i32.const 460
                                          i32.add
                                          local.get 33
                                          local.get 2
                                          i32.const 1
                                          i32.const 12
                                          call $runtime.sliceAppend
                                          local.get 32
                                          local.get 5
                                          i32.load offset=184
                                          local.tee 4
                                          i32.store
                                          local.get 5
                                          i32.load offset=192
                                          local.set 2
                                          local.get 5
                                          i32.load offset=188
                                          local.set 33
                                        end
                                        local.get 9
                                        local.get 4
                                        i32.store
                                        local.get 15
                                        local.get 4
                                        i32.store
                                        local.get 9
                                        local.get 2
                                        i32.store offset=8
                                        local.get 9
                                        local.get 33
                                        i32.store offset=4
                                        local.get 16
                                        local.get 9
                                        i32.load
                                        i32.store
                                        local.get 9
                                        i32.load offset=4
                                        i32.const -1
                                        i32.add
                                        local.tee 2
                                        local.get 33
                                        i32.ge_u
                                        br_if 6 (;@12;)
                                        local.get 17
                                        local.get 4
                                        local.get 2
                                        i32.const 12
                                        i32.mul
                                        i32.add
                                        local.tee 36
                                        i32.store
                                        local.get 5
                                        i32.const 176
                                        i32.add
                                        local.get 1
                                        local.get 8
                                        call $github.com/valyala/fastjson.skipWS
                                        local.get 18
                                        local.get 5
                                        i32.load offset=176
                                        local.tee 1
                                        i32.store
                                        local.get 5
                                        i32.load offset=180
                                        local.tee 8
                                        i32.eqz
                                        br_if 3 (;@15;)
                                        local.get 1
                                        i32.load8_u
                                        i32.const 34
                                        i32.ne
                                        br_if 3 (;@15;)
                                        local.get 4
                                        i32.eqz
                                        br_if 13 (;@5;)
                                        i32.const 0
                                        local.set 4
                                        local.get 8
                                        i32.const -1
                                        i32.add
                                        local.tee 33
                                        i32.const 0
                                        local.get 33
                                        i32.const 0
                                        i32.gt_s
                                        select
                                        local.set 34
                                        local.get 1
                                        i32.const 1
                                        i32.add
                                        local.set 37
                                        block  ;; label = @19
                                          loop  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    local.get 34
                                                    local.get 4
                                                    i32.eq
                                                    br_if 0 (;@24;)
                                                    local.get 33
                                                    local.get 4
                                                    i32.ne
                                                    br_if 1 (;@23;)
                                                    br 12 (;@12;)
                                                  end
                                                  i32.const 0
                                                  local.set 8
                                                  local.get 5
                                                  i32.const 144
                                                  i32.add
                                                  i32.const 71088
                                                  i32.const 19
                                                  i32.const 0
                                                  i32.const 0
                                                  i32.const 0
                                                  call $fmt.Errorf
                                                  local.get 19
                                                  local.get 5
                                                  i32.load offset=148
                                                  local.tee 4
                                                  i32.store
                                                  i32.const 72144
                                                  local.set 1
                                                  local.get 5
                                                  i32.load offset=144
                                                  local.set 2
                                                  br 1 (;@22;)
                                                end
                                                block  ;; label = @23
                                                  local.get 1
                                                  local.get 4
                                                  i32.add
                                                  local.tee 35
                                                  i32.const 1
                                                  i32.add
                                                  i32.load8_u
                                                  local.tee 2
                                                  i32.const 34
                                                  i32.eq
                                                  br_if 0 (;@23;)
                                                  local.get 2
                                                  i32.const 92
                                                  i32.ne
                                                  br_if 2 (;@21;)
                                                  local.get 5
                                                  i32.const 152
                                                  i32.add
                                                  local.get 37
                                                  local.get 33
                                                  call $github.com/valyala/fastjson.parseRawString
                                                  local.get 29
                                                  local.get 5
                                                  i32.load offset=172
                                                  local.tee 4
                                                  i32.store
                                                  local.get 30
                                                  local.get 5
                                                  i32.load offset=160
                                                  local.tee 1
                                                  i32.store
                                                  local.get 31
                                                  local.get 5
                                                  i32.load offset=152
                                                  local.tee 37
                                                  i32.store
                                                  local.get 5
                                                  i32.load offset=168
                                                  local.set 2
                                                  local.get 5
                                                  i32.load offset=164
                                                  local.set 8
                                                  local.get 5
                                                  i32.load offset=156
                                                  local.set 33
                                                  br 1 (;@22;)
                                                end
                                                local.get 4
                                                local.get 33
                                                i32.gt_u
                                                br_if 12 (;@10;)
                                                local.get 4
                                                local.get 33
                                                i32.ge_u
                                                br_if 12 (;@10;)
                                                local.get 8
                                                local.get 4
                                                i32.sub
                                                i32.const -2
                                                i32.add
                                                local.set 8
                                                local.get 35
                                                i32.const 2
                                                i32.add
                                                local.set 1
                                                i32.const 0
                                                local.set 2
                                                local.get 4
                                                local.set 33
                                                i32.const 0
                                                local.set 4
                                              end
                                              local.get 20
                                              local.get 4
                                              i32.store
                                              local.get 21
                                              local.get 1
                                              i32.store
                                              local.get 22
                                              local.get 37
                                              i32.store
                                              local.get 36
                                              local.get 33
                                              i32.store offset=4
                                              local.get 36
                                              local.get 37
                                              i32.store
                                              local.get 2
                                              i32.eqz
                                              br_if 2 (;@19;)
                                              local.get 5
                                              local.get 2
                                              i32.store offset=432
                                              local.get 5
                                              local.get 4
                                              i32.store offset=436
                                              local.get 5
                                              i32.const 136
                                              i32.add
                                              i32.const 70880
                                              i32.const 27
                                              local.get 5
                                              i32.const 432
                                              i32.add
                                              i32.const 1
                                              i32.const 1
                                              call $fmt.Errorf
                                              local.get 5
                                              i32.const 676
                                              i32.add
                                              local.get 5
                                              i32.load offset=140
                                              local.tee 4
                                              i32.store
                                              local.get 5
                                              i32.load offset=136
                                              local.set 2
                                              i32.const 0
                                              local.set 9
                                              br 7 (;@14;)
                                            end
                                            local.get 4
                                            i32.const 1
                                            i32.add
                                            local.set 4
                                            br 0 (;@20;)
                                          end
                                        end
                                        local.get 5
                                        i32.const 128
                                        i32.add
                                        local.get 1
                                        local.get 8
                                        call $github.com/valyala/fastjson.skipWS
                                        local.get 23
                                        local.get 5
                                        i32.load offset=128
                                        local.tee 1
                                        i32.store
                                        local.get 5
                                        i32.load offset=132
                                        local.tee 8
                                        i32.eqz
                                        br_if 2 (;@16;)
                                        local.get 1
                                        i32.load8_u
                                        i32.const 58
                                        i32.ne
                                        br_if 2 (;@16;)
                                        local.get 5
                                        i32.const 120
                                        i32.add
                                        local.get 1
                                        i32.const 1
                                        i32.add
                                        local.get 8
                                        i32.const -1
                                        i32.add
                                        call $github.com/valyala/fastjson.skipWS
                                        local.get 24
                                        local.get 5
                                        i32.load offset=120
                                        local.tee 4
                                        i32.store
                                        local.get 5
                                        i32.const 96
                                        i32.add
                                        local.get 4
                                        local.get 5
                                        i32.load offset=124
                                        local.get 3
                                        local.get 7
                                        call $github.com/valyala/fastjson.parseValue
                                        local.get 25
                                        local.get 5
                                        i32.load offset=112
                                        local.tee 33
                                        i32.store
                                        local.get 26
                                        local.get 5
                                        i32.load offset=100
                                        local.tee 1
                                        i32.store
                                        local.get 27
                                        local.get 5
                                        i32.load offset=96
                                        local.tee 2
                                        i32.store
                                        local.get 5
                                        i32.load offset=108
                                        local.set 4
                                        local.get 5
                                        i32.load offset=104
                                        local.set 8
                                        local.get 36
                                        local.get 2
                                        i32.store offset=8
                                        block  ;; label = @19
                                          local.get 4
                                          i32.eqz
                                          br_if 0 (;@19;)
                                          local.get 5
                                          local.get 4
                                          i32.store offset=440
                                          local.get 5
                                          local.get 33
                                          i32.store offset=444
                                          local.get 5
                                          i32.const 88
                                          i32.add
                                          i32.const 70944
                                          i32.const 29
                                          local.get 5
                                          i32.const 440
                                          i32.add
                                          i32.const 1
                                          i32.const 1
                                          call $fmt.Errorf
                                          local.get 5
                                          i32.const 692
                                          i32.add
                                          local.get 5
                                          i32.load offset=92
                                          local.tee 4
                                          i32.store
                                          local.get 5
                                          i32.load offset=88
                                          local.set 2
                                          i32.const 0
                                          local.set 9
                                          br 5 (;@14;)
                                        end
                                        local.get 5
                                        i32.const 80
                                        i32.add
                                        local.get 1
                                        local.get 8
                                        call $github.com/valyala/fastjson.skipWS
                                        local.get 28
                                        local.get 5
                                        i32.load offset=80
                                        local.tee 1
                                        i32.store
                                        block  ;; label = @19
                                          local.get 5
                                          i32.load offset=84
                                          local.tee 8
                                          br_if 0 (;@19;)
                                          i32.const 0
                                          local.set 9
                                          local.get 5
                                          i32.const 64
                                          i32.add
                                          i32.const 70976
                                          i32.const 24
                                          i32.const 0
                                          i32.const 0
                                          i32.const 0
                                          call $fmt.Errorf
                                          local.get 5
                                          i32.const 700
                                          i32.add
                                          local.get 5
                                          i32.load offset=68
                                          local.tee 4
                                          i32.store
                                          local.get 5
                                          i32.load offset=64
                                          local.set 2
                                          i32.const 0
                                          local.set 8
                                          br 5 (;@14;)
                                        end
                                        block  ;; label = @19
                                          local.get 1
                                          i32.load8_u
                                          local.tee 4
                                          i32.const 44
                                          i32.ne
                                          br_if 0 (;@19;)
                                          local.get 8
                                          i32.const -1
                                          i32.add
                                          local.set 8
                                          local.get 1
                                          i32.const 1
                                          i32.add
                                          local.set 1
                                          br 1 (;@18;)
                                        end
                                      end
                                      block  ;; label = @18
                                        local.get 4
                                        i32.const 125
                                        i32.eq
                                        br_if 0 (;@18;)
                                        i32.const 0
                                        local.set 9
                                        local.get 5
                                        i32.const 72
                                        i32.add
                                        i32.const 71008
                                        i32.const 30
                                        i32.const 0
                                        i32.const 0
                                        i32.const 0
                                        call $fmt.Errorf
                                        local.get 5
                                        i32.const 704
                                        i32.add
                                        local.get 5
                                        i32.load offset=76
                                        local.tee 4
                                        i32.store
                                        local.get 5
                                        i32.load offset=72
                                        local.set 2
                                        br 4 (;@14;)
                                      end
                                      local.get 1
                                      i32.const 1
                                      i32.add
                                      local.set 1
                                      local.get 8
                                      i32.const -1
                                      i32.add
                                      local.set 8
                                    end
                                    i32.const 0
                                    local.set 2
                                    i32.const 0
                                    local.set 4
                                    br 2 (;@14;)
                                  end
                                  i32.const 0
                                  local.set 9
                                  local.get 5
                                  i32.const 56
                                  i32.add
                                  i32.const 70912
                                  i32.const 28
                                  i32.const 0
                                  i32.const 0
                                  i32.const 0
                                  call $fmt.Errorf
                                  local.get 5
                                  i32.const 684
                                  i32.add
                                  local.get 5
                                  i32.load offset=60
                                  local.tee 4
                                  i32.store
                                  local.get 5
                                  i32.load offset=56
                                  local.set 2
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                local.set 9
                                local.get 5
                                i32.const 48
                                i32.add
                                i32.const 70832
                                i32.const 38
                                i32.const 0
                                i32.const 0
                                i32.const 0
                                call $fmt.Errorf
                                local.get 5
                                i32.const 668
                                i32.add
                                local.get 5
                                i32.load offset=52
                                local.tee 4
                                i32.store
                                local.get 5
                                i32.load offset=48
                                local.set 2
                              end
                              local.get 5
                              i32.const 760
                              i32.add
                              local.get 1
                              i32.store
                              local.get 5
                              i32.const 756
                              i32.add
                              local.get 9
                              i32.store
                              local.get 5
                              i32.const 764
                              i32.add
                              local.get 4
                              i32.store
                              local.get 2
                              i32.eqz
                              br_if 12 (;@1;)
                              local.get 5
                              local.get 4
                              i32.store offset=420
                              local.get 5
                              local.get 2
                              i32.store offset=416
                              local.get 5
                              i32.const 492
                              i32.add
                              local.get 5
                              i32.const 416
                              i32.add
                              i32.store
                              local.get 5
                              i32.const 32
                              i32.add
                              i32.const 71200
                              i32.const 23
                              local.get 5
                              i32.const 416
                              i32.add
                              i32.const 1
                              i32.const 1
                              call $fmt.Errorf
                              i32.const 0
                              local.get 6
                              i32.store offset=83624
                              local.get 5
                              i32.const 496
                              i32.add
                              local.get 5
                              i32.load offset=36
                              local.tee 4
                              i32.store
                              local.get 5
                              i32.load offset=32
                              local.set 2
                              local.get 0
                              local.get 4
                              i32.store offset=16
                              local.get 0
                              local.get 8
                              i32.store offset=8
                              local.get 0
                              i32.const 0
                              i32.store
                              local.get 0
                              local.get 2
                              i32.store offset=12
                              local.get 0
                              local.get 1
                              i32.store offset=4
                              local.get 5
                              i32.const 864
                              i32.add
                              global.set 0
                              return
                            end
                            local.get 5
                            i32.const 572
                            i32.add
                            local.get 5
                            i32.const 432
                            i32.add
                            i32.store
                            i32.const 0
                            local.set 4
                            local.get 2
                            i32.const 0
                            local.get 2
                            i32.const 0
                            i32.gt_s
                            select
                            local.set 34
                            block  ;; label = @13
                              block  ;; label = @14
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 34
                                        local.get 4
                                        i32.eq
                                        br_if 0 (;@18;)
                                        local.get 2
                                        local.get 4
                                        i32.eq
                                        br_if 6 (;@12;)
                                        local.get 1
                                        local.get 4
                                        i32.add
                                        local.tee 35
                                        i32.load8_u
                                        local.tee 33
                                        i32.const -48
                                        i32.add
                                        i32.const 255
                                        i32.and
                                        i32.const 10
                                        i32.lt_u
                                        br_if 2 (;@16;)
                                        local.get 33
                                        i32.const -43
                                        i32.add
                                        local.tee 7
                                        i32.const 26
                                        i32.gt_u
                                        br_if 1 (;@17;)
                                        i32.const 1
                                        local.get 7
                                        i32.shl
                                        i32.const 67108877
                                        i32.and
                                        i32.eqz
                                        br_if 1 (;@17;)
                                        br 2 (;@16;)
                                      end
                                      i32.const 0
                                      local.set 33
                                      local.get 1
                                      local.set 8
                                      local.get 2
                                      local.set 4
                                      i32.const 72144
                                      local.set 1
                                      i32.const 0
                                      local.set 2
                                      br 9 (;@8;)
                                    end
                                    local.get 33
                                    i32.const 101
                                    i32.eq
                                    br_if 0 (;@16;)
                                    local.get 4
                                    br_table 5 (;@11;) 2 (;@14;) 3 (;@13;)
                                  end
                                  local.get 4
                                  i32.const 1
                                  i32.add
                                  local.set 4
                                  br 0 (;@15;)
                                end
                              end
                              local.get 9
                              i32.const -43
                              i32.add
                              br_table 2 (;@11;) 0 (;@13;) 2 (;@11;) 0 (;@13;)
                            end
                            local.get 4
                            local.get 2
                            i32.gt_u
                            br_if 2 (;@10;)
                            local.get 2
                            local.get 4
                            i32.sub
                            local.set 2
                            i32.const 0
                            local.set 33
                            local.get 35
                            local.set 1
                            br 4 (;@8;)
                          end
                          call $runtime.lookupPanic
                          unreachable
                        end
                        local.get 4
                        local.get 2
                        i32.gt_u
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          local.get 2
                          local.get 4
                          i32.sub
                          local.tee 33
                          i32.const 2
                          i32.le_s
                          br_if 0 (;@11;)
                          local.get 4
                          i32.const 3
                          i32.add
                          local.tee 4
                          local.get 2
                          i32.gt_u
                          br_if 1 (;@10;)
                          local.get 35
                          i32.const 71038
                          call $strings.EqualFold
                          i32.const 1
                          i32.and
                          br_if 2 (;@9;)
                          local.get 35
                          i32.const 71287
                          call $strings.EqualFold
                          i32.const 1
                          i32.and
                          br_if 2 (;@9;)
                        end
                        local.get 5
                        i64.const 0
                        i64.store offset=432 align=4
                        local.get 5
                        i32.const 576
                        i32.add
                        i32.const 8
                        call $runtime.alloc
                        local.tee 4
                        i32.store
                        local.get 5
                        i32.const 580
                        i32.add
                        local.get 4
                        i32.store
                        local.get 4
                        i32.const 1
                        i32.store offset=4
                        local.get 4
                        local.get 8
                        i32.store
                        local.get 5
                        local.get 4
                        i32.store offset=436
                        local.get 5
                        i32.const 34
                        i32.store offset=432
                        local.get 5
                        i32.const 24
                        i32.add
                        i32.const 71056
                        i32.const 19
                        local.get 5
                        i32.const 432
                        i32.add
                        i32.const 1
                        i32.const 1
                        call $fmt.Errorf
                        local.get 5
                        i32.const 584
                        i32.add
                        local.get 5
                        i32.load offset=28
                        local.tee 34
                        i32.store
                        local.get 5
                        i32.load offset=24
                        local.set 33
                        i32.const 0
                        local.set 4
                        i32.const 72144
                        local.set 8
                        br 3 (;@7;)
                      end
                      call $runtime.slicePanic
                      unreachable
                    end
                    local.get 33
                    i32.const -3
                    i32.add
                    local.set 2
                    local.get 35
                    i32.const 3
                    i32.add
                    local.set 1
                    i32.const 0
                    local.set 33
                  end
                  i32.const 0
                  local.set 34
                end
                local.get 5
                i32.const 588
                i32.add
                local.get 8
                i32.store
                local.get 5
                i32.const 592
                i32.add
                local.get 1
                i32.store
                local.get 5
                i32.const 596
                i32.add
                local.get 34
                i32.store
                block  ;; label = @7
                  local.get 33
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 608
                  i32.add
                  local.get 3
                  call $_*github.com/valyala/fastjson.cache_.getValue
                  local.tee 33
                  i32.store
                  local.get 33
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 33
                  local.get 8
                  i32.store offset=28
                  local.get 33
                  i32.const 4
                  i32.store offset=36
                  i32.const 0
                  local.get 6
                  i32.store offset=83624
                  local.get 33
                  i32.const 32
                  i32.add
                  local.get 4
                  i32.store
                  local.get 0
                  i64.const 0
                  i64.store offset=12 align=4
                  local.get 0
                  local.get 2
                  i32.store offset=8
                  local.get 0
                  local.get 1
                  i32.store offset=4
                  local.get 0
                  local.get 33
                  i32.store
                  local.get 5
                  i32.const 864
                  i32.add
                  global.set 0
                  return
                end
                local.get 5
                local.get 34
                i32.store offset=372
                local.get 5
                local.get 33
                i32.store offset=368
                local.get 5
                i32.const 600
                i32.add
                local.get 5
                i32.const 368
                i32.add
                i32.store
                local.get 5
                i32.const 16
                i32.add
                i32.const 71328
                i32.const 23
                local.get 5
                i32.const 368
                i32.add
                i32.const 1
                i32.const 1
                call $fmt.Errorf
                i32.const 0
                local.get 6
                i32.store offset=83624
                local.get 5
                i32.const 604
                i32.add
                local.get 5
                i32.load offset=20
                local.tee 4
                i32.store
                local.get 5
                i32.load offset=16
                local.set 6
                local.get 0
                local.get 4
                i32.store offset=16
                local.get 0
                local.get 2
                i32.store offset=8
                local.get 0
                i32.const 0
                i32.store
                local.get 0
                local.get 6
                i32.store offset=12
                local.get 0
                local.get 1
                i32.store offset=4
                local.get 5
                i32.const 864
                i32.add
                global.set 0
                return
              end
              block  ;; label = @6
                local.get 2
                i32.const 4
                i32.lt_s
                br_if 0 (;@6;)
                i32.const 0
                local.set 4
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 4
                    i32.const 4
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    local.get 6
                    i32.store offset=83624
                    local.get 0
                    i64.const 0
                    i64.store offset=12 align=4
                    local.get 0
                    local.get 2
                    i32.const -4
                    i32.add
                    i32.store offset=8
                    local.get 0
                    local.get 1
                    i32.const 4
                    i32.add
                    i32.store offset=4
                    local.get 0
                    i32.const 83632
                    i32.store
                    local.get 5
                    i32.const 864
                    i32.add
                    global.set 0
                    return
                  end
                  local.get 4
                  i32.const 72220
                  i32.add
                  local.set 33
                  local.get 1
                  local.get 4
                  i32.add
                  local.set 34
                  local.get 4
                  i32.const 1
                  i32.add
                  local.set 4
                  local.get 34
                  i32.load8_u
                  local.get 33
                  i32.load8_u
                  i32.eq
                  br_if 0 (;@7;)
                end
              end
              block  ;; label = @6
                local.get 2
                i32.const 2
                i32.le_s
                br_if 0 (;@6;)
                local.get 8
                i32.const 71287
                call $strings.EqualFold
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 5
                i32.const 552
                i32.add
                local.get 3
                call $_*github.com/valyala/fastjson.cache_.getValue
                local.tee 4
                i32.store
                local.get 4
                i32.eqz
                br_if 1 (;@5;)
                local.get 4
                local.get 8
                i32.store offset=28
                i32.const 0
                local.get 6
                i32.store offset=83624
                local.get 4
                i32.const 32
                i32.add
                i64.const 17179869187
                i64.store align=4
                local.get 0
                i64.const 0
                i64.store offset=12 align=4
                local.get 0
                local.get 2
                i32.const -3
                i32.add
                i32.store offset=8
                local.get 0
                local.get 1
                i32.const 3
                i32.add
                i32.store offset=4
                local.get 0
                local.get 4
                i32.store
                local.get 5
                i32.const 864
                i32.add
                global.set 0
                return
              end
              local.get 5
              i64.const 0
              i64.store offset=376 align=4
              local.get 5
              i32.const 556
              i32.add
              local.get 5
              i32.const 376
              i32.add
              i32.store
              local.get 5
              i32.const 560
              i32.add
              i32.const 8
              call $runtime.alloc
              local.tee 4
              i32.store
              local.get 5
              i32.const 564
              i32.add
              local.get 4
              i32.store
              local.get 4
              local.get 2
              i32.store offset=4
              local.get 4
              local.get 8
              i32.store
              local.get 5
              local.get 4
              i32.store offset=380
              local.get 5
              i32.const 34
              i32.store offset=376
              local.get 5
              i32.const 360
              i32.add
              i32.const 71296
              i32.const 26
              local.get 5
              i32.const 376
              i32.add
              i32.const 1
              i32.const 1
              call $fmt.Errorf
              i32.const 0
              local.get 6
              i32.store offset=83624
              local.get 5
              i32.const 568
              i32.add
              local.get 5
              i32.load offset=364
              local.tee 4
              i32.store
              local.get 5
              i32.load offset=360
              local.set 6
              local.get 0
              local.get 4
              i32.store offset=16
              local.get 0
              local.get 2
              i32.store offset=8
              local.get 0
              i32.const 0
              i32.store
              local.get 0
              local.get 6
              i32.store offset=12
              local.get 0
              local.get 1
              i32.store offset=4
              local.get 5
              i32.const 864
              i32.add
              global.set 0
              return
            end
            call $runtime.nilPanic
            unreachable
          end
          block  ;; label = @4
            local.get 2
            i32.const 5
            i32.lt_s
            br_if 0 (;@4;)
            i32.const 0
            local.set 4
            loop  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.const 5
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                local.get 6
                i32.store offset=83624
                local.get 0
                i64.const 0
                i64.store offset=12 align=4
                local.get 0
                local.get 2
                i32.const -5
                i32.add
                i32.store offset=8
                local.get 0
                local.get 1
                i32.const 5
                i32.add
                i32.store offset=4
                local.get 0
                i32.const 82632
                i32.store
                local.get 5
                i32.const 864
                i32.add
                global.set 0
                return
              end
              local.get 4
              i32.const 72215
              i32.add
              local.set 33
              local.get 1
              local.get 4
              i32.add
              local.set 3
              local.get 4
              i32.const 1
              i32.add
              local.set 4
              local.get 3
              i32.load8_u
              local.get 33
              i32.load8_u
              i32.eq
              br_if 0 (;@5;)
            end
          end
          local.get 5
          i64.const 0
          i64.store offset=384 align=4
          local.get 5
          i32.const 536
          i32.add
          local.get 5
          i32.const 384
          i32.add
          i32.store
          local.get 5
          i32.const 540
          i32.add
          i32.const 8
          call $runtime.alloc
          local.tee 4
          i32.store
          local.get 5
          i32.const 544
          i32.add
          local.get 4
          i32.store
          local.get 4
          local.get 2
          i32.store offset=4
          local.get 4
          local.get 8
          i32.store
          local.get 5
          local.get 4
          i32.store offset=388
          local.get 5
          i32.const 34
          i32.store offset=384
          local.get 5
          i32.const 352
          i32.add
          i32.const 71296
          i32.const 26
          local.get 5
          i32.const 384
          i32.add
          i32.const 1
          i32.const 1
          call $fmt.Errorf
          i32.const 0
          local.get 6
          i32.store offset=83624
          local.get 5
          i32.const 548
          i32.add
          local.get 5
          i32.load offset=356
          local.tee 4
          i32.store
          local.get 5
          i32.load offset=352
          local.set 6
          local.get 0
          local.get 4
          i32.store offset=16
          local.get 0
          local.get 2
          i32.store offset=8
          local.get 0
          i32.const 0
          i32.store
          local.get 0
          local.get 6
          i32.store offset=12
          local.get 0
          local.get 1
          i32.store offset=4
          local.get 5
          i32.const 864
          i32.add
          global.set 0
          return
        end
        block  ;; label = @3
          local.get 2
          i32.const 4
          i32.lt_s
          br_if 0 (;@3;)
          i32.const 0
          local.set 4
          loop  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.const 4
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              local.get 6
              i32.store offset=83624
              local.get 0
              i64.const 0
              i64.store offset=12 align=4
              local.get 0
              local.get 2
              i32.const -4
              i32.add
              i32.store offset=8
              local.get 0
              local.get 1
              i32.const 4
              i32.add
              i32.store offset=4
              local.get 0
              i32.const 82592
              i32.store
              local.get 5
              i32.const 864
              i32.add
              global.set 0
              return
            end
            local.get 4
            i32.const 72211
            i32.add
            local.set 33
            local.get 1
            local.get 4
            i32.add
            local.set 3
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            local.get 3
            i32.load8_u
            local.get 33
            i32.load8_u
            i32.eq
            br_if 0 (;@4;)
          end
        end
        local.get 5
        i64.const 0
        i64.store offset=392 align=4
        local.get 5
        i32.const 520
        i32.add
        local.get 5
        i32.const 392
        i32.add
        i32.store
        local.get 5
        i32.const 524
        i32.add
        i32.const 8
        call $runtime.alloc
        local.tee 4
        i32.store
        local.get 5
        i32.const 528
        i32.add
        local.get 4
        i32.store
        local.get 4
        local.get 2
        i32.store offset=4
        local.get 4
        local.get 8
        i32.store
        local.get 5
        local.get 4
        i32.store offset=396
        local.get 5
        i32.const 34
        i32.store offset=392
        local.get 5
        i32.const 344
        i32.add
        i32.const 71296
        i32.const 26
        local.get 5
        i32.const 392
        i32.add
        i32.const 1
        i32.const 1
        call $fmt.Errorf
        i32.const 0
        local.get 6
        i32.store offset=83624
        local.get 5
        i32.const 532
        i32.add
        local.get 5
        i32.load offset=348
        local.tee 4
        i32.store
        local.get 5
        i32.load offset=344
        local.set 6
        local.get 0
        local.get 4
        i32.store offset=16
        local.get 0
        local.get 2
        i32.store offset=8
        local.get 0
        i32.const 0
        i32.store
        local.get 0
        local.get 6
        i32.store offset=12
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 5
        i32.const 864
        i32.add
        global.set 0
        return
      end
      i32.const 0
      local.get 6
      i32.store offset=83624
      local.get 0
      i64.const 0
      i64.store offset=12 align=4
      local.get 0
      local.get 2
      i32.store offset=8
      local.get 0
      local.get 4
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 5
      i32.const 864
      i32.add
      global.set 0
      return
    end
    i32.const 0
    local.get 6
    i32.store offset=83624
    local.get 0
    i64.const 0
    i64.store offset=12 align=4
    local.get 0
    local.get 8
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 9
    i32.store
    local.get 5
    i32.const 864
    i32.add
    global.set 0)
  (func $_*github.com/valyala/fastjson.Object_.reset (type 2) (param i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 0
    i32.const 0
    i32.store8 offset=12
    local.get 0
    i32.const 0
    i32.store offset=4)
  (func $github.com/valyala/fastjson.parseRawString (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i64.const 0
    i64.store offset=36 align=4
    local.get 3
    i64.const 3
    i64.store offset=28 align=4
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 3
    i32.const 24
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 4
    i32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                local.get 2
                i32.const 34
                call $strings.IndexByte
                local.tee 5
                i32.const -1
                i32.le_s
                br_if 0 (;@6;)
                local.get 5
                i32.eqz
                br_if 4 (;@2;)
                local.get 5
                i32.const -1
                i32.add
                local.tee 6
                local.get 2
                i32.ge_u
                br_if 2 (;@4;)
                local.get 1
                local.get 6
                i32.add
                i32.load8_u
                i32.const 92
                i32.ne
                br_if 4 (;@2;)
                local.get 3
                i32.const 36
                i32.add
                local.set 7
                local.get 1
                local.set 8
                local.get 2
                local.set 9
                br 1 (;@5;)
              end
              local.get 3
              i32.const 8
              i32.add
              i32.const 71088
              i32.const 19
              i32.const 0
              i32.const 0
              i32.const 0
              call $fmt.Errorf
              i32.const 0
              local.get 4
              i32.store offset=83624
              local.get 3
              i32.const 32
              i32.add
              local.get 3
              i32.load offset=12
              local.tee 6
              i32.store
              local.get 0
              local.get 3
              i32.load offset=8
              i32.store offset=16
              local.get 0
              i32.const 72144
              i32.store offset=8
              local.get 0
              local.get 1
              i32.store
              local.get 0
              local.get 6
              i32.store offset=20
              local.get 0
              i32.const 0
              i32.store offset=12
              local.get 0
              local.get 2
              i32.store offset=4
              local.get 3
              i32.const 48
              i32.add
              global.set 0
              return
            end
            loop  ;; label = @5
              local.get 7
              local.get 8
              i32.store
              i32.const 0
              local.get 5
              i32.const -1
              i32.add
              local.get 5
              i32.const 0
              i32.gt_s
              select
              local.set 10
              local.get 8
              i32.const -2
              i32.add
              local.set 11
              local.get 5
              local.set 6
              block  ;; label = @6
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 6
                    i32.const -1
                    i32.add
                    local.tee 12
                    i32.const 1
                    i32.ge_s
                    br_if 0 (;@8;)
                    local.get 10
                    local.set 12
                    br 2 (;@6;)
                  end
                  local.get 6
                  i32.const -2
                  i32.add
                  local.get 9
                  i32.ge_u
                  br_if 3 (;@4;)
                  local.get 11
                  local.get 6
                  i32.add
                  local.set 13
                  local.get 12
                  local.set 6
                  local.get 13
                  i32.load8_u
                  i32.const 92
                  i32.eq
                  br_if 0 (;@7;)
                end
              end
              block  ;; label = @6
                local.get 5
                local.get 12
                i32.sub
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                local.get 2
                local.get 9
                i32.sub
                local.get 5
                i32.add
                local.tee 12
                local.get 2
                i32.gt_u
                br_if 5 (;@1;)
                local.get 9
                local.get 5
                i32.const 1
                i32.add
                local.tee 6
                i32.lt_u
                br_if 5 (;@1;)
                i32.const 0
                local.get 4
                i32.store offset=83624
                local.get 0
                i64.const 0
                i64.store offset=16
                local.get 0
                local.get 9
                local.get 6
                i32.sub
                i32.store offset=12
                local.get 0
                local.get 8
                local.get 6
                i32.add
                i32.store offset=8
                local.get 0
                local.get 12
                i32.store offset=4
                local.get 0
                local.get 1
                i32.store
                local.get 3
                i32.const 48
                i32.add
                global.set 0
                return
              end
              local.get 9
              local.get 5
              i32.const 1
              i32.add
              local.tee 6
              i32.lt_u
              br_if 4 (;@1;)
              block  ;; label = @6
                local.get 8
                local.get 6
                i32.add
                local.tee 8
                local.get 9
                local.get 6
                i32.sub
                local.tee 9
                i32.const 34
                call $strings.IndexByte
                local.tee 5
                i32.const 0
                i32.ge_s
                br_if 0 (;@6;)
                local.get 3
                i32.const 16
                i32.add
                i32.const 71088
                i32.const 19
                i32.const 0
                i32.const 0
                i32.const 0
                call $fmt.Errorf
                i32.const 0
                local.get 4
                i32.store offset=83624
                local.get 3
                i32.const 40
                i32.add
                local.get 3
                i32.load offset=20
                local.tee 6
                i32.store
                local.get 0
                local.get 3
                i32.load offset=16
                i32.store offset=16
                local.get 0
                i32.const 72144
                i32.store offset=8
                local.get 0
                local.get 1
                i32.store
                local.get 0
                local.get 6
                i32.store offset=20
                local.get 0
                i32.const 0
                i32.store offset=12
                local.get 0
                local.get 2
                i32.store offset=4
                local.get 3
                i32.const 48
                i32.add
                global.set 0
                return
              end
              local.get 5
              i32.eqz
              br_if 2 (;@3;)
              local.get 5
              i32.const -1
              i32.add
              local.tee 6
              local.get 9
              i32.ge_u
              br_if 1 (;@4;)
              local.get 8
              local.get 6
              i32.add
              i32.load8_u
              i32.const 92
              i32.eq
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          call $runtime.lookupPanic
          unreachable
        end
        local.get 5
        local.get 2
        local.get 9
        i32.sub
        i32.add
        local.tee 6
        local.get 2
        i32.gt_u
        br_if 1 (;@1;)
        local.get 9
        local.get 5
        i32.le_u
        br_if 1 (;@1;)
        i32.const 0
        local.get 4
        i32.store offset=83624
        local.get 0
        i64.const 0
        i64.store offset=16
        local.get 0
        local.get 9
        local.get 5
        i32.const 1
        i32.add
        local.tee 12
        i32.sub
        i32.store offset=12
        local.get 0
        local.get 8
        local.get 12
        i32.add
        i32.store offset=8
        local.get 0
        local.get 6
        i32.store offset=4
        local.get 0
        local.get 1
        i32.store
        local.get 3
        i32.const 48
        i32.add
        global.set 0
        return
      end
      local.get 5
      local.get 2
      i32.gt_u
      br_if 0 (;@1;)
      local.get 5
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      local.get 4
      i32.store offset=83624
      local.get 0
      i64.const 0
      i64.store offset=16
      local.get 0
      local.get 2
      local.get 5
      i32.const 1
      i32.add
      local.tee 6
      i32.sub
      i32.store offset=12
      local.get 0
      local.get 1
      local.get 6
      i32.add
      i32.store offset=8
      local.get 0
      local.get 5
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 3
      i32.const 48
      i32.add
      global.set 0
      return
    end
    call $runtime.slicePanic
    unreachable)
  (func $github.com/valyala/fastjson.startEndString (type 5) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 0
    i32.store offset=28
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 3
    i32.const 16
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 4
    i32.store offset=16
    block  ;; label = @1
      local.get 2
      i32.const 80
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 0
      local.get 4
      i32.store offset=83624
      local.get 0
      local.get 2
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 3
      i32.const 32
      i32.add
      global.set 0
      return
    end
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    i32.const 40
    i32.const 71351
    i32.const 3
    call $runtime.stringConcat
    local.get 3
    i32.const 24
    i32.add
    local.get 3
    i32.load offset=8
    local.tee 5
    i32.store
    local.get 3
    local.get 5
    local.get 3
    i32.load offset=12
    local.get 2
    local.get 1
    i32.add
    i32.const -40
    i32.add
    i32.const 40
    call $runtime.stringConcat
    i32.const 0
    local.get 4
    i32.store offset=83624
    local.get 3
    i32.const 28
    i32.add
    local.get 3
    i32.load
    local.tee 2
    i32.store
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 3
    i32.load offset=4
    i32.store offset=4
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func $runtime.looksLikePointer (type 1) (param i32) (result i32)
    (local i32)
    i32.const 0
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 83672
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=82672
      local.get 0
      i32.gt_u
      local.set 1
    end
    local.get 1)
  (func $_runtime.gcBlock_.findHead (type 1) (param i32) (result i32)
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
  (func $runtime.printint32 (type 2) (param i32)
    block  ;; label = @1
      local.get 0
      i32.const -1
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 45
      call $runtime.putchar
      i32.const 0
      local.get 0
      i32.sub
      local.set 0
    end
    local.get 0
    i64.extend_i32_u
    call $runtime.printuint64)
  (func $runtime.printuint64 (type 31) (param i64)
    (local i32 i32 i32 i64 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 24
    i32.add
    i32.const 0
    i32.store
    local.get 1
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 1
    i64.const 0
    i64.store offset=8
    i32.const 19
    local.set 2
    i32.const 19
    local.set 3
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          local.get 2
          i32.const 20
          local.get 2
          i32.const 20
          i32.gt_s
          select
          local.get 2
          i32.sub
          local.set 3
          local.get 1
          i32.const 8
          i32.add
          local.get 2
          i32.add
          local.set 2
          loop  ;; label = @4
            local.get 3
            i32.eqz
            br_if 3 (;@1;)
            local.get 2
            i32.load8_u
            call $runtime.putchar
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            local.get 3
            i32.const -1
            i32.add
            local.set 3
            br 0 (;@4;)
          end
        end
        local.get 1
        i32.const 8
        i32.add
        local.get 3
        i32.add
        local.get 0
        local.get 0
        i64.const 10
        i64.div_u
        local.tee 4
        i64.const 10
        i64.mul
        i64.sub
        i32.wrap_i64
        i32.const 48
        i32.or
        local.tee 5
        i32.store8
        local.get 2
        local.get 3
        local.get 5
        i32.const 255
        i32.and
        i32.const 48
        i32.eq
        select
        local.set 2
        local.get 3
        i32.const -1
        i32.add
        local.set 3
        local.get 4
        local.set 0
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 32
    i32.add
    global.set 0)
  (func $runtime.printptr (type 2) (param i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      i32.const 48
      call $runtime.putchar
      i32.const 120
      call $runtime.putchar
      i32.const 8
      local.set 1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const 28
          i32.shr_u
          local.tee 2
          i32.const 48
          i32.or
          local.get 2
          i32.const 87
          i32.add
          local.get 2
          i32.const 10
          i32.lt_u
          select
          call $runtime.putchar
          local.get 1
          i32.const -1
          i32.add
          local.set 1
          local.get 0
          i32.const 4
          i32.shl
          local.set 0
          br 0 (;@3;)
        end
      end
      return
    end
    i32.const 71751
    i32.const 3
    call $runtime.printstring)
  (func $runtime.printfloat32 (type 32) (param f32)
    (local i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          local.get 0
          f32.ne
          br_if 0 (;@3;)
          local.get 0
          local.get 0
          f32.add
          local.set 2
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              f32.const 0x0p+0 (;=0;)
              f32.gt
              i32.const 1
              i32.xor
              br_if 0 (;@5;)
              local.get 2
              local.get 0
              f32.eq
              br_if 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                f32.const 0x0p+0 (;=0;)
                f32.lt
                i32.const 1
                i32.xor
                br_if 0 (;@6;)
                local.get 2
                local.get 0
                f32.eq
                br_if 1 (;@5;)
              end
              local.get 1
              i64.const 0
              i64.store
              local.get 1
              i64.const 0
              i64.store offset=6 align=2
              i32.const 43
              local.set 3
              local.get 1
              i32.const 43
              i32.store8
              block  ;; label = @6
                local.get 0
                f32.const 0x0p+0 (;=0;)
                f32.ne
                br_if 0 (;@6;)
                i32.const 0
                local.set 4
                i32.const 43
                local.set 3
                f32.const 0x1p+0 (;=1;)
                local.get 0
                f32.div
                f32.const 0x0p+0 (;=0;)
                f32.lt
                br_if 4 (;@2;)
                br 5 (;@1;)
              end
              block  ;; label = @6
                local.get 0
                f32.const 0x0p+0 (;=0;)
                f32.lt
                i32.const 1
                i32.xor
                br_if 0 (;@6;)
                i32.const 45
                local.set 3
                local.get 1
                i32.const 45
                i32.store8
                local.get 0
                f32.neg
                local.set 0
              end
              i32.const 0
              local.set 4
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  f32.const 0x1.4p+3 (;=10;)
                  f32.ge
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 0
                      f32.const 0x1p+0 (;=1;)
                      f32.lt
                      i32.const 1
                      i32.xor
                      br_if 1 (;@8;)
                      local.get 0
                      f32.const 0x1.4p+3 (;=10;)
                      f32.mul
                      local.set 0
                      local.get 4
                      i32.const -1
                      i32.add
                      local.set 4
                      br 0 (;@9;)
                    end
                  end
                  local.get 0
                  f32.const 0x1.0c6f78p-21 (;=5e-07;)
                  f32.add
                  local.tee 0
                  f32.const 0x1.4p+3 (;=10;)
                  f32.ge
                  i32.const 1
                  i32.xor
                  br_if 6 (;@1;)
                  local.get 0
                  f32.const 0x1.4p+3 (;=10;)
                  f32.div
                  local.set 0
                  local.get 4
                  i32.const 1
                  i32.add
                  local.set 4
                  br 6 (;@1;)
                end
                local.get 0
                f32.const 0x1.4p+3 (;=10;)
                f32.div
                local.set 0
                local.get 4
                i32.const 1
                i32.add
                local.set 4
                br 0 (;@6;)
              end
            end
            i32.const 71438
            i32.const 4
            call $runtime.printstring
            local.get 1
            i32.const 32
            i32.add
            global.set 0
            return
          end
          i32.const 71434
          i32.const 4
          call $runtime.printstring
          local.get 1
          i32.const 32
          i32.add
          global.set 0
          return
        end
        i32.const 71431
        i32.const 3
        call $runtime.printstring
        local.get 1
        i32.const 32
        i32.add
        global.set 0
        return
      end
      i32.const 45
      local.set 3
      local.get 1
      i32.const 45
      i32.store8
    end
    local.get 1
    i32.const 2
    i32.or
    local.set 5
    i32.const 0
    local.set 6
    block  ;; label = @1
      loop  ;; label = @2
        local.get 6
        i32.const 7
        i32.eq
        br_if 1 (;@1;)
        i32.const 0
        i32.const 2147483647
        i32.const -2147483648
        local.get 0
        f32.const -0x1p+31 (;=-2.14748e+09;)
        f32.ge
        local.tee 7
        select
        local.get 0
        local.get 0
        f32.ne
        select
        local.set 8
        local.get 0
        f32.const 0x1.fffffcp+30 (;=2.14748e+09;)
        f32.le
        local.set 9
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            f32.abs
            f32.const 0x1p+31 (;=2.14748e+09;)
            f32.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.trunc_f32_s
            local.set 10
            br 1 (;@3;)
          end
          i32.const -2147483648
          local.set 10
        end
        local.get 5
        local.get 6
        i32.add
        local.get 10
        local.get 8
        local.get 9
        select
        local.get 8
        local.get 7
        select
        local.tee 8
        i32.const 48
        i32.add
        i32.store8
        local.get 0
        local.get 8
        f32.convert_i32_s
        f32.sub
        f32.const 0x1.4p+3 (;=10;)
        f32.mul
        local.set 0
        local.get 6
        i32.const 1
        i32.add
        local.set 6
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 101
    i32.store8 offset=9
    local.get 1
    i32.load8_u offset=2
    local.set 8
    local.get 1
    i32.const 46
    i32.store8 offset=2
    local.get 1
    local.get 8
    i32.store8 offset=1
    i32.const 0
    local.set 6
    local.get 1
    i32.const 45
    i32.const 43
    local.get 4
    i32.const 0
    i32.lt_s
    select
    local.tee 7
    i32.store8 offset=10
    local.get 1
    local.get 4
    local.get 4
    i32.const 31
    i32.shr_s
    local.tee 9
    i32.add
    local.get 9
    i32.xor
    local.tee 10
    i32.const 100
    i32.div_s
    i32.const 48
    i32.add
    local.tee 9
    i32.store8 offset=11
    local.get 1
    local.get 10
    local.get 10
    i32.const 10
    i32.div_s
    local.tee 4
    i32.const 10
    i32.mul
    i32.sub
    i32.const 48
    i32.add
    local.tee 10
    i32.store8 offset=13
    local.get 1
    local.get 4
    i32.const 255
    i32.and
    i32.const 10
    i32.rem_u
    i32.const 48
    i32.or
    local.tee 4
    i32.store8 offset=12
    local.get 1
    i32.load8_u offset=8
    local.set 5
    local.get 1
    i32.load8_u offset=7
    local.set 11
    local.get 1
    i32.load8_u offset=6
    local.set 12
    local.get 1
    i32.load8_u offset=5
    local.set 13
    local.get 1
    i32.load8_u offset=4
    local.set 14
    local.get 1
    i32.load8_u offset=3
    local.set 15
    loop  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 14
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.const 32
        i32.add
        global.set 0
        return
      end
      local.get 1
      local.get 10
      i32.store8 offset=31
      local.get 1
      local.get 4
      i32.store8 offset=30
      local.get 1
      local.get 9
      i32.store8 offset=29
      local.get 1
      local.get 7
      i32.store8 offset=28
      local.get 1
      i32.const 101
      i32.store8 offset=27
      local.get 1
      local.get 5
      i32.store8 offset=26
      local.get 1
      local.get 11
      i32.store8 offset=25
      local.get 1
      local.get 12
      i32.store8 offset=24
      local.get 1
      local.get 13
      i32.store8 offset=23
      local.get 1
      local.get 14
      i32.store8 offset=22
      local.get 1
      local.get 15
      i32.store8 offset=21
      local.get 1
      i32.const 46
      i32.store8 offset=20
      local.get 1
      local.get 8
      i32.store8 offset=19
      local.get 1
      local.get 3
      i32.store8 offset=18
      local.get 1
      i32.const 18
      i32.add
      local.get 6
      i32.add
      i32.load8_u
      call $runtime.putchar
      local.get 6
      i32.const 1
      i32.add
      local.set 6
      br 0 (;@1;)
    end)
  (func $runtime.printfloat64 (type 33) (param f64)
    (local i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          local.get 0
          f64.ne
          br_if 0 (;@3;)
          local.get 0
          local.get 0
          f64.add
          local.set 2
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              f64.const 0x0p+0 (;=0;)
              f64.gt
              i32.const 1
              i32.xor
              br_if 0 (;@5;)
              local.get 2
              local.get 0
              f64.eq
              br_if 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                f64.const 0x0p+0 (;=0;)
                f64.lt
                i32.const 1
                i32.xor
                br_if 0 (;@6;)
                local.get 2
                local.get 0
                f64.eq
                br_if 1 (;@5;)
              end
              local.get 1
              i64.const 0
              i64.store
              local.get 1
              i64.const 0
              i64.store offset=6 align=2
              i32.const 43
              local.set 3
              local.get 1
              i32.const 43
              i32.store8
              block  ;; label = @6
                local.get 0
                f64.const 0x0p+0 (;=0;)
                f64.ne
                br_if 0 (;@6;)
                i32.const 0
                local.set 4
                i32.const 43
                local.set 3
                f64.const 0x1p+0 (;=1;)
                local.get 0
                f64.div
                f64.const 0x0p+0 (;=0;)
                f64.lt
                br_if 4 (;@2;)
                br 5 (;@1;)
              end
              block  ;; label = @6
                local.get 0
                f64.const 0x0p+0 (;=0;)
                f64.lt
                i32.const 1
                i32.xor
                br_if 0 (;@6;)
                i32.const 45
                local.set 3
                local.get 1
                i32.const 45
                i32.store8
                local.get 0
                f64.neg
                local.set 0
              end
              i32.const 0
              local.set 4
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  f64.const 0x1.4p+3 (;=10;)
                  f64.ge
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 0
                      f64.const 0x1p+0 (;=1;)
                      f64.lt
                      i32.const 1
                      i32.xor
                      br_if 1 (;@8;)
                      local.get 0
                      f64.const 0x1.4p+3 (;=10;)
                      f64.mul
                      local.set 0
                      local.get 4
                      i32.const -1
                      i32.add
                      local.set 4
                      br 0 (;@9;)
                    end
                  end
                  local.get 0
                  f64.const 0x1.0c6f7a0b5ed8ep-21 (;=5e-07;)
                  f64.add
                  local.tee 0
                  f64.const 0x1.4p+3 (;=10;)
                  f64.ge
                  i32.const 1
                  i32.xor
                  br_if 6 (;@1;)
                  local.get 0
                  f64.const 0x1.4p+3 (;=10;)
                  f64.div
                  local.set 0
                  local.get 4
                  i32.const 1
                  i32.add
                  local.set 4
                  br 6 (;@1;)
                end
                local.get 0
                f64.const 0x1.4p+3 (;=10;)
                f64.div
                local.set 0
                local.get 4
                i32.const 1
                i32.add
                local.set 4
                br 0 (;@6;)
              end
            end
            i32.const 71438
            i32.const 4
            call $runtime.printstring
            local.get 1
            i32.const 32
            i32.add
            global.set 0
            return
          end
          i32.const 71434
          i32.const 4
          call $runtime.printstring
          local.get 1
          i32.const 32
          i32.add
          global.set 0
          return
        end
        i32.const 71431
        i32.const 3
        call $runtime.printstring
        local.get 1
        i32.const 32
        i32.add
        global.set 0
        return
      end
      i32.const 45
      local.set 3
      local.get 1
      i32.const 45
      i32.store8
    end
    local.get 1
    i32.const 2
    i32.or
    local.set 5
    i32.const 0
    local.set 6
    block  ;; label = @1
      loop  ;; label = @2
        local.get 6
        i32.const 7
        i32.eq
        br_if 1 (;@1;)
        i32.const 0
        i32.const 2147483647
        i32.const -2147483648
        local.get 0
        f64.const -0x1p+31 (;=-2.14748e+09;)
        f64.ge
        local.tee 7
        select
        local.get 0
        local.get 0
        f64.ne
        select
        local.set 8
        local.get 0
        f64.const 0x1.fffffffcp+30 (;=2.14748e+09;)
        f64.le
        local.set 9
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            f64.abs
            f64.const 0x1p+31 (;=2.14748e+09;)
            f64.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.trunc_f64_s
            local.set 10
            br 1 (;@3;)
          end
          i32.const -2147483648
          local.set 10
        end
        local.get 5
        local.get 6
        i32.add
        local.get 10
        local.get 8
        local.get 9
        select
        local.get 8
        local.get 7
        select
        local.tee 8
        i32.const 48
        i32.add
        i32.store8
        local.get 0
        local.get 8
        f64.convert_i32_s
        f64.sub
        f64.const 0x1.4p+3 (;=10;)
        f64.mul
        local.set 0
        local.get 6
        i32.const 1
        i32.add
        local.set 6
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 101
    i32.store8 offset=9
    local.get 1
    i32.load8_u offset=2
    local.set 8
    local.get 1
    i32.const 46
    i32.store8 offset=2
    local.get 1
    local.get 8
    i32.store8 offset=1
    i32.const 0
    local.set 6
    local.get 1
    i32.const 45
    i32.const 43
    local.get 4
    i32.const 0
    i32.lt_s
    select
    local.tee 7
    i32.store8 offset=10
    local.get 1
    local.get 4
    local.get 4
    i32.const 31
    i32.shr_s
    local.tee 9
    i32.add
    local.get 9
    i32.xor
    local.tee 10
    i32.const 100
    i32.div_s
    i32.const 48
    i32.add
    local.tee 9
    i32.store8 offset=11
    local.get 1
    local.get 10
    local.get 10
    i32.const 10
    i32.div_s
    local.tee 4
    i32.const 10
    i32.mul
    i32.sub
    i32.const 48
    i32.add
    local.tee 10
    i32.store8 offset=13
    local.get 1
    local.get 4
    i32.const 255
    i32.and
    i32.const 10
    i32.rem_u
    i32.const 48
    i32.or
    local.tee 4
    i32.store8 offset=12
    local.get 1
    i32.load8_u offset=8
    local.set 5
    local.get 1
    i32.load8_u offset=7
    local.set 11
    local.get 1
    i32.load8_u offset=6
    local.set 12
    local.get 1
    i32.load8_u offset=5
    local.set 13
    local.get 1
    i32.load8_u offset=4
    local.set 14
    local.get 1
    i32.load8_u offset=3
    local.set 15
    loop  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 14
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.const 32
        i32.add
        global.set 0
        return
      end
      local.get 1
      local.get 10
      i32.store8 offset=31
      local.get 1
      local.get 4
      i32.store8 offset=30
      local.get 1
      local.get 9
      i32.store8 offset=29
      local.get 1
      local.get 7
      i32.store8 offset=28
      local.get 1
      i32.const 101
      i32.store8 offset=27
      local.get 1
      local.get 5
      i32.store8 offset=26
      local.get 1
      local.get 11
      i32.store8 offset=25
      local.get 1
      local.get 12
      i32.store8 offset=24
      local.get 1
      local.get 13
      i32.store8 offset=23
      local.get 1
      local.get 14
      i32.store8 offset=22
      local.get 1
      local.get 15
      i32.store8 offset=21
      local.get 1
      i32.const 46
      i32.store8 offset=20
      local.get 1
      local.get 8
      i32.store8 offset=19
      local.get 1
      local.get 3
      i32.store8 offset=18
      local.get 1
      i32.const 18
      i32.add
      local.get 6
      i32.add
      i32.load8_u
      call $runtime.putchar
      local.get 6
      i32.const 1
      i32.add
      local.set 6
      br 0 (;@1;)
    end)
  (func $_start (type 3)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 352
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    local.set 1
    local.get 0
    i32.const 0
    i32.store offset=344
    local.get 0
    i64.const 0
    i64.store offset=336
    local.get 0
    i64.const 0
    i64.store offset=328
    local.get 0
    i64.const 0
    i64.store offset=320
    local.get 0
    i64.const 0
    i64.store offset=312
    local.get 0
    i64.const 0
    i64.store offset=304
    local.get 0
    i64.const 0
    i64.store offset=296
    local.get 0
    i64.const 0
    i64.store offset=288
    local.get 0
    i64.const 0
    i64.store offset=280
    local.get 0
    i64.const 0
    i64.store offset=272
    local.get 0
    i64.const 0
    i64.store offset=264
    local.get 0
    i64.const 0
    i64.store offset=256
    local.get 0
    i64.const 0
    i64.store offset=248
    local.get 0
    i64.const 0
    i64.store offset=240
    local.get 0
    i64.const 0
    i64.store offset=232
    local.get 0
    i64.const 0
    i64.store offset=224
    local.get 0
    i64.const 0
    i64.store offset=216
    local.get 0
    i64.const 0
    i64.store offset=208
    local.get 0
    i64.const 0
    i64.store offset=200
    local.get 0
    i64.const 158913789952
    i64.store offset=192
    local.get 0
    i32.const 0
    i32.load offset=83624
    local.tee 2
    i32.store offset=192
    i32.const 0
    local.get 0
    i32.const 192
    i32.add
    i32.store offset=83624
    i32.const 0
    memory.size
    i32.const 16
    i32.shl
    i32.store offset=83472
    call $runtime.calculateHeapAddresses
    local.get 0
    i32.const 0
    i32.load offset=82672
    local.tee 3
    i32.store offset=200
    local.get 0
    local.get 3
    i32.store offset=204
    local.get 3
    i32.const 0
    i32.const 0
    i32.load offset=83472
    local.get 3
    i32.sub
    call $memset
    drop
    i32.const 3685
    call $_reflect.Type_.Elem
    drop
    i32.const 0
    memory.size
    i32.const 16
    i32.shl
    i32.store offset=83472
    local.get 0
    local.get 0
    i32.const 128
    i32.add
    i32.store offset=208
    local.get 0
    i64.const 0
    i64.store offset=128
    local.get 0
    i64.const 0
    i64.store offset=136
    local.get 0
    i64.const 0
    i64.store offset=144
    local.get 0
    local.get 0
    i32.const 120
    i32.add
    i32.store offset=312
    local.get 0
    local.get 0
    i32.const 160
    i32.add
    i32.store offset=260
    local.get 0
    local.get 0
    i32.const 152
    i32.add
    i32.store offset=284
    local.get 0
    i32.const 112
    i32.add
    i32.const 71520
    i32.const 96
    call $github.com/valyala/fastjson.skipWS
    local.get 0
    local.get 0
    i32.load offset=112
    local.tee 3
    i32.store offset=212
    local.get 0
    i32.const 96
    i32.add
    i32.const 0
    local.get 3
    i32.const 0
    i32.const 0
    local.get 0
    i32.load offset=116
    i32.const 1
    call $runtime.sliceAppend
    local.get 0
    i32.const 0
    i32.store offset=144
    local.get 0
    local.get 0
    i32.load offset=96
    local.tee 3
    i32.store offset=240
    local.get 0
    local.get 3
    i32.store offset=236
    local.get 0
    local.get 3
    i32.store offset=220
    local.get 0
    local.get 3
    i32.store offset=216
    local.get 0
    local.get 0
    i32.load offset=104
    i32.store offset=136
    local.get 0
    local.get 0
    i32.load offset=100
    local.tee 4
    i32.store offset=132
    local.get 0
    local.get 3
    i32.store offset=128
    local.get 0
    local.get 0
    i32.const 180
    i32.add
    i32.store offset=232
    local.get 0
    local.get 0
    i32.const 180
    i32.add
    i32.store offset=228
    local.get 0
    local.get 0
    i32.const 180
    i32.add
    i32.store offset=224
    local.get 0
    i32.const 72
    i32.add
    local.get 3
    local.get 4
    local.get 0
    i32.const 140
    i32.add
    i32.const 0
    call $github.com/valyala/fastjson.parseValue
    local.get 0
    local.get 0
    i32.load offset=88
    local.tee 5
    i32.store offset=252
    local.get 0
    local.get 0
    i32.load offset=76
    local.tee 3
    i32.store offset=248
    local.get 0
    local.get 0
    i32.load offset=72
    local.tee 6
    i32.store offset=244
    local.get 0
    i32.load offset=80
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=84
        local.tee 7
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 64
        i32.add
        local.get 3
        local.get 4
        call $github.com/valyala/fastjson.startEndString
        local.get 0
        i32.const 256
        i32.add
        local.get 0
        i32.load offset=64
        local.tee 4
        i32.store
        local.get 0
        i64.const 0
        i64.store offset=160
        local.get 0
        i64.const 0
        i64.store offset=168
        local.get 0
        local.get 7
        i32.store offset=160
        local.get 0
        local.get 5
        i32.store offset=164
        local.get 0
        i32.load offset=68
        local.set 5
        local.get 0
        i32.const 264
        i32.add
        i32.const 8
        call $runtime.alloc
        local.tee 3
        i32.store
        local.get 0
        i32.const 268
        i32.add
        local.get 3
        i32.store
        local.get 3
        local.get 5
        i32.store offset=4
        local.get 3
        local.get 4
        i32.store
        local.get 0
        local.get 3
        i32.store offset=172
        local.get 0
        i32.const 34
        i32.store offset=168
        local.get 0
        i32.const 56
        i32.add
        i32.const 72144
        i32.const 40
        local.get 0
        i32.const 160
        i32.add
        i32.const 2
        i32.const 2
        call $fmt.Errorf
        local.get 0
        i32.const 272
        i32.add
        local.get 0
        i32.load offset=60
        local.tee 3
        i32.store
        local.get 0
        i32.load offset=56
        local.set 4
        br 1 (;@1;)
      end
      local.get 0
      i32.const 48
      i32.add
      local.get 3
      local.get 4
      call $github.com/valyala/fastjson.skipWS
      local.get 0
      i32.const 276
      i32.add
      local.get 0
      i32.load offset=48
      local.tee 3
      i32.store
      block  ;; label = @2
        local.get 0
        i32.load offset=52
        local.tee 4
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        local.get 0
        i32.const 40
        i32.add
        local.get 3
        local.get 4
        call $github.com/valyala/fastjson.startEndString
        local.get 0
        i32.const 280
        i32.add
        local.get 0
        i32.load offset=40
        local.tee 4
        i32.store
        local.get 0
        i64.const 0
        i64.store offset=152 align=4
        local.get 0
        i32.load offset=44
        local.set 5
        local.get 0
        i32.const 288
        i32.add
        i32.const 8
        call $runtime.alloc
        local.tee 3
        i32.store
        local.get 0
        i32.const 292
        i32.add
        local.get 3
        i32.store
        local.get 3
        local.get 5
        i32.store offset=4
        local.get 3
        local.get 4
        i32.store
        local.get 0
        local.get 3
        i32.store offset=156
        local.get 0
        i32.const 34
        i32.store offset=152
        local.get 0
        i32.const 32
        i32.add
        i32.const 72192
        i32.const 19
        local.get 0
        i32.const 152
        i32.add
        i32.const 1
        i32.const 1
        call $fmt.Errorf
        local.get 0
        i32.const 296
        i32.add
        local.get 0
        i32.load offset=36
        local.tee 3
        i32.store
        local.get 0
        i32.load offset=32
        local.set 4
        br 1 (;@1;)
      end
      i32.const 0
      local.set 4
      local.get 6
      local.set 1
      i32.const 0
      local.set 3
    end
    local.get 0
    i32.const 300
    i32.add
    local.get 1
    i32.store
    local.get 0
    i32.const 304
    i32.add
    local.get 3
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        local.get 0
        i32.const 16
        i32.add
        local.get 1
        i32.const 0
        i32.const 0
        i32.const 0
        call $_*github.com/valyala/fastjson.Value_.MarshalTo
        local.get 0
        i32.const 308
        i32.add
        local.get 0
        i32.load offset=16
        local.tee 1
        i32.store
        local.get 0
        i64.const 0
        i64.store offset=120 align=4
        local.get 0
        i64.load offset=20 align=4
        local.set 8
        local.get 0
        i32.const 320
        i32.add
        i32.const 12
        call $runtime.alloc
        local.tee 3
        i32.store
        local.get 0
        i32.const 328
        i32.add
        local.get 3
        i32.store
        local.get 0
        i32.const 316
        i32.add
        local.get 3
        i32.store
        local.get 3
        local.get 8
        i64.store offset=4 align=4
        local.get 3
        local.get 1
        i32.store
        local.get 0
        local.get 3
        i32.store offset=124
        local.get 0
        i32.const 519
        i32.store offset=120
        local.get 0
        i32.const 324
        i32.add
        call $fmt.newPrinter
        local.tee 1
        i32.store
        local.get 1
        i32.const 519
        local.get 3
        i32.const 118
        call $_*fmt.pp_.printArg
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const 10
        call $_*fmt.buffer_.writeByte
        local.get 0
        i32.const 332
        i32.add
        local.get 1
        i32.load
        local.tee 3
        i32.store
        local.get 0
        i32.const 82692
        local.get 3
        local.get 1
        i32.load offset=4
        call $_*os.File_.Write
        local.get 0
        i32.const 344
        i32.add
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.store
        local.get 0
        i32.const 340
        i32.add
        local.get 3
        i32.store
        local.get 0
        i32.const 336
        i32.add
        local.get 3
        i32.store
        local.get 1
        call $_*fmt.pp_.free
        i32.const 0
        local.get 2
        i32.store offset=83624
        local.get 0
        i32.const 352
        i32.add
        global.set 0
        return
      end
      local.get 4
      local.get 3
      call $runtime._panic
      unreachable
    end
    call $runtime.nilPanic
    unreachable)
  (func $_*github.com/valyala/fastjson.Value_.MarshalTo (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 624
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    i64.const 0
    i64.store offset=616
    local.get 5
    i64.const 0
    i64.store offset=608
    local.get 5
    i64.const 0
    i64.store offset=600
    local.get 5
    i64.const 0
    i64.store offset=592
    local.get 5
    i64.const 0
    i64.store offset=584
    local.get 5
    i64.const 0
    i64.store offset=576
    local.get 5
    i64.const 0
    i64.store offset=568
    local.get 5
    i64.const 0
    i64.store offset=560
    local.get 5
    i64.const 0
    i64.store offset=552
    local.get 5
    i64.const 0
    i64.store offset=544
    local.get 5
    i64.const 0
    i64.store offset=536
    local.get 5
    i64.const 0
    i64.store offset=528
    local.get 5
    i64.const 0
    i64.store offset=520
    local.get 5
    i64.const 0
    i64.store offset=512
    local.get 5
    i64.const 0
    i64.store offset=504
    local.get 5
    i64.const 0
    i64.store offset=496
    local.get 5
    i64.const 0
    i64.store offset=488
    local.get 5
    i64.const 0
    i64.store offset=480
    local.get 5
    i64.const 0
    i64.store offset=472
    local.get 5
    i64.const 0
    i64.store offset=464
    local.get 5
    i64.const 0
    i64.store offset=456
    local.get 5
    i64.const 0
    i64.store offset=448
    local.get 5
    i64.const 0
    i64.store offset=440
    local.get 5
    i64.const 0
    i64.store offset=432
    local.get 5
    i64.const 0
    i64.store offset=424
    local.get 5
    i64.const 0
    i64.store offset=416
    local.get 5
    i64.const 223338299392
    i64.store offset=408
    local.get 5
    i32.const 0
    i32.load offset=83624
    local.tee 6
    i32.store offset=408
    i32.const 0
    local.get 5
    i32.const 408
    i32.add
    i32.store offset=83624
    block  ;; label = @1
      local.get 1
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.load offset=36
                        local.tee 7
                        br_table 4 (;@6;) 0 (;@10;) 7 (;@3;) 3 (;@7;) 2 (;@8;) 6 (;@4;) 5 (;@5;) 9 (;@1;) 1 (;@9;)
                      end
                      local.get 5
                      i32.const 544
                      i32.add
                      local.get 5
                      i32.const 404
                      i32.add
                      i32.store
                      local.get 5
                      i32.const 496
                      i32.add
                      local.get 5
                      i32.const 400
                      i32.add
                      i32.store
                      local.get 5
                      i32.const 516
                      i32.add
                      local.get 5
                      i32.const 396
                      i32.add
                      i32.store
                      local.get 5
                      i32.const 524
                      i32.add
                      local.get 5
                      i32.const 392
                      i32.add
                      i32.store
                      local.get 5
                      i32.const 540
                      i32.add
                      local.get 5
                      i32.const 388
                      i32.add
                      i32.store
                      local.get 5
                      i32.const 572
                      i32.add
                      local.get 5
                      i32.const 384
                      i32.add
                      i32.store
                      local.get 5
                      i32.const 552
                      i32.add
                      local.get 5
                      i32.const 368
                      i32.add
                      i32.store
                      local.get 5
                      i32.const 0
                      i32.store offset=404
                      local.get 5
                      i32.const 123
                      i32.store8 offset=404
                      local.get 5
                      i32.const 184
                      i32.add
                      local.get 2
                      local.get 5
                      i32.const 404
                      i32.add
                      local.get 3
                      local.get 4
                      i32.const 1
                      i32.const 1
                      call $runtime.sliceAppend
                      local.get 5
                      i32.const 548
                      i32.add
                      local.get 5
                      i32.load offset=184
                      local.tee 4
                      i32.store
                      local.get 5
                      i32.const 556
                      i32.add
                      local.get 1
                      i32.load
                      local.tee 3
                      i32.store
                      local.get 5
                      i32.const 0
                      i32.store offset=376
                      local.get 5
                      i64.const 0
                      i64.store offset=368
                      local.get 1
                      i32.load offset=4
                      local.tee 8
                      i32.const 0
                      local.get 8
                      i32.const 0
                      i32.gt_s
                      select
                      local.set 9
                      local.get 5
                      i32.load offset=192
                      local.set 10
                      local.get 5
                      i32.load offset=188
                      local.set 11
                      local.get 5
                      i32.const 484
                      i32.add
                      local.set 12
                      local.get 5
                      i32.const 560
                      i32.add
                      local.set 13
                      local.get 5
                      i32.const 568
                      i32.add
                      local.set 14
                      local.get 5
                      i32.const 532
                      i32.add
                      local.set 15
                      local.get 5
                      i32.const 504
                      i32.add
                      local.set 16
                      local.get 5
                      i32.const 564
                      i32.add
                      local.set 17
                      local.get 5
                      i32.const 488
                      i32.add
                      local.set 18
                      local.get 5
                      i32.const 492
                      i32.add
                      local.set 19
                      local.get 5
                      i32.const 500
                      i32.add
                      local.set 20
                      local.get 5
                      i32.const 508
                      i32.add
                      local.set 21
                      local.get 5
                      i32.const 512
                      i32.add
                      local.set 22
                      local.get 5
                      i32.const 520
                      i32.add
                      local.set 23
                      local.get 5
                      i32.const 528
                      i32.add
                      local.set 24
                      local.get 5
                      i32.const 536
                      i32.add
                      local.set 25
                      i32.const 0
                      local.set 2
                      loop  ;; label = @10
                        local.get 12
                        local.get 4
                        i32.store
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 9
                              local.get 2
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 2
                              i32.eq
                              br_if 11 (;@2;)
                              local.get 13
                              local.get 3
                              i32.load
                              local.tee 7
                              i32.store
                              local.get 14
                              local.get 7
                              i32.store
                              local.get 15
                              local.get 7
                              i32.store
                              local.get 3
                              i32.const 4
                              i32.add
                              i32.load
                              local.set 26
                              local.get 16
                              local.get 3
                              i32.const 8
                              i32.add
                              i32.load
                              local.tee 27
                              i32.store
                              local.get 17
                              local.get 27
                              i32.store
                              local.get 1
                              i32.load8_u offset=12
                              i32.eqz
                              br_if 1 (;@12;)
                              local.get 5
                              i32.const 120
                              i32.add
                              local.get 4
                              local.get 11
                              local.get 10
                              local.get 7
                              local.get 26
                              call $github.com/valyala/fastjson.escapeString
                              local.get 5
                              i32.load offset=128
                              local.set 7
                              local.get 5
                              i32.load offset=124
                              local.set 10
                              local.get 5
                              i32.load offset=120
                              local.set 4
                              br 2 (;@11;)
                            end
                            local.get 5
                            i32.const 0
                            i32.store offset=384
                            local.get 5
                            i32.const 125
                            i32.store8 offset=384
                            local.get 5
                            i32.const 56
                            i32.add
                            local.get 4
                            local.get 5
                            i32.const 384
                            i32.add
                            local.get 11
                            local.get 10
                            i32.const 1
                            i32.const 1
                            call $runtime.sliceAppend
                            local.get 5
                            i32.const 580
                            i32.add
                            local.get 5
                            i32.load offset=56
                            local.tee 1
                            i32.store
                            local.get 5
                            i32.const 576
                            i32.add
                            local.get 1
                            i32.store
                            i32.const 0
                            local.get 6
                            i32.store offset=83624
                            local.get 0
                            local.get 5
                            i64.load offset=60 align=4
                            i64.store offset=4 align=4
                            local.get 0
                            local.get 1
                            i32.store
                            local.get 5
                            i32.const 624
                            i32.add
                            global.set 0
                            return
                          end
                          local.get 5
                          i32.const 0
                          i32.store offset=392
                          local.get 5
                          i32.const 34
                          i32.store8 offset=392
                          local.get 5
                          i32.const 168
                          i32.add
                          local.get 4
                          local.get 5
                          i32.const 392
                          i32.add
                          local.get 11
                          local.get 10
                          i32.const 1
                          i32.const 1
                          call $runtime.sliceAppend
                          local.get 24
                          local.get 5
                          i32.load offset=168
                          local.tee 4
                          i32.store
                          local.get 5
                          i32.const 152
                          i32.add
                          local.get 4
                          local.get 7
                          local.get 5
                          i32.load offset=172
                          local.get 5
                          i32.load offset=176
                          local.get 26
                          i32.const 1
                          call $runtime.sliceAppend
                          local.get 25
                          local.get 5
                          i32.load offset=152
                          local.tee 4
                          i32.store
                          local.get 5
                          i32.const 0
                          i32.store offset=388
                          local.get 5
                          i32.const 34
                          i32.store8 offset=388
                          local.get 5
                          i32.const 136
                          i32.add
                          local.get 4
                          local.get 5
                          i32.const 388
                          i32.add
                          local.get 5
                          i32.load offset=156
                          local.get 5
                          i32.load offset=160
                          i32.const 1
                          i32.const 1
                          call $runtime.sliceAppend
                          local.get 5
                          i32.load offset=144
                          local.set 7
                          local.get 5
                          i32.load offset=140
                          local.set 10
                          local.get 5
                          i32.load offset=136
                          local.set 4
                        end
                        local.get 18
                        local.get 4
                        i32.store
                        local.get 19
                        local.get 4
                        i32.store
                        local.get 5
                        i32.const 0
                        i32.store offset=400
                        local.get 5
                        i32.const 58
                        i32.store8 offset=400
                        local.get 5
                        i32.const 104
                        i32.add
                        local.get 4
                        local.get 5
                        i32.const 400
                        i32.add
                        local.get 10
                        local.get 7
                        i32.const 1
                        i32.const 1
                        call $runtime.sliceAppend
                        local.get 20
                        local.get 5
                        i32.load offset=104
                        local.tee 4
                        i32.store
                        local.get 5
                        i32.const 88
                        i32.add
                        local.get 27
                        local.get 4
                        local.get 5
                        i32.load offset=108
                        local.get 5
                        i32.load offset=112
                        call $_*github.com/valyala/fastjson.Value_.MarshalTo
                        local.get 21
                        local.get 5
                        i32.load offset=88
                        local.tee 4
                        i32.store
                        local.get 22
                        local.get 1
                        i32.load
                        i32.store
                        local.get 5
                        i32.load offset=96
                        local.set 10
                        local.get 5
                        i32.load offset=92
                        local.set 11
                        block  ;; label = @11
                          local.get 2
                          local.get 1
                          i32.load offset=4
                          i32.const -1
                          i32.add
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 5
                          i32.const 0
                          i32.store offset=396
                          local.get 5
                          i32.const 44
                          i32.store8 offset=396
                          local.get 5
                          i32.const 72
                          i32.add
                          local.get 4
                          local.get 5
                          i32.const 396
                          i32.add
                          local.get 11
                          local.get 10
                          i32.const 1
                          i32.const 1
                          call $runtime.sliceAppend
                          local.get 23
                          local.get 5
                          i32.load offset=72
                          local.tee 4
                          i32.store
                          local.get 5
                          i32.load offset=80
                          local.set 10
                          local.get 5
                          i32.load offset=76
                          local.set 11
                        end
                        local.get 3
                        i32.const 12
                        i32.add
                        local.set 3
                        local.get 2
                        i32.const 1
                        i32.add
                        local.set 2
                        br 0 (;@10;)
                      end
                    end
                    local.get 5
                    i32.const 616
                    i32.add
                    local.get 7
                    i32.store
                    local.get 5
                    i64.const 132
                    i64.store offset=340 align=4
                    local.get 5
                    i32.const 612
                    i32.add
                    local.get 5
                    i32.const 340
                    i32.add
                    i32.store
                    local.get 5
                    local.get 7
                    i32.store offset=344
                    local.get 5
                    i32.const 72224
                    i32.const 30
                    local.get 5
                    i32.const 340
                    i32.add
                    i32.const 1
                    i32.const 1
                    call $fmt.Errorf
                    local.get 5
                    i32.const 620
                    i32.add
                    local.get 5
                    i32.load offset=4
                    local.tee 1
                    i32.store
                    local.get 5
                    i32.load
                    local.get 1
                    call $runtime._panic
                    unreachable
                  end
                  local.get 5
                  i32.const 604
                  i32.add
                  local.get 1
                  i32.load offset=28
                  local.tee 7
                  i32.store
                  local.get 5
                  i32.const 280
                  i32.add
                  local.get 2
                  local.get 7
                  local.get 3
                  local.get 4
                  local.get 1
                  i32.const 32
                  i32.add
                  i32.load
                  i32.const 1
                  call $runtime.sliceAppend
                  i32.const 0
                  local.get 6
                  i32.store offset=83624
                  local.get 5
                  i32.const 608
                  i32.add
                  local.get 5
                  i32.load offset=280
                  local.tee 1
                  i32.store
                  local.get 0
                  local.get 5
                  i32.load offset=288
                  i32.store offset=8
                  local.get 0
                  local.get 1
                  i32.store
                  local.get 0
                  local.get 5
                  i32.load offset=284
                  i32.store offset=4
                  local.get 5
                  i32.const 624
                  i32.add
                  global.set 0
                  return
                end
                local.get 5
                i32.const 596
                i32.add
                local.get 1
                i32.load offset=28
                local.tee 7
                i32.store
                local.get 5
                i32.const 264
                i32.add
                local.get 2
                local.get 3
                local.get 4
                local.get 7
                local.get 1
                i32.const 32
                i32.add
                i32.load
                call $github.com/valyala/fastjson.escapeString
                i32.const 0
                local.get 6
                i32.store offset=83624
                local.get 5
                i32.const 600
                i32.add
                local.get 5
                i32.load offset=264
                local.tee 1
                i32.store
                local.get 0
                local.get 5
                i32.load offset=272
                i32.store offset=8
                local.get 0
                local.get 1
                i32.store
                local.get 0
                local.get 5
                i32.load offset=268
                i32.store offset=4
                local.get 5
                i32.const 624
                i32.add
                global.set 0
                return
              end
              local.get 5
              i32.const 328
              i32.add
              local.get 2
              i32.const 72220
              local.get 3
              local.get 4
              i32.const 4
              i32.const 1
              call $runtime.sliceAppend
              i32.const 0
              local.get 6
              i32.store offset=83624
              local.get 5
              i32.const 480
              i32.add
              local.get 5
              i32.load offset=328
              local.tee 1
              i32.store
              local.get 0
              local.get 5
              i32.load offset=336
              i32.store offset=8
              local.get 0
              local.get 1
              i32.store
              local.get 0
              local.get 5
              i32.load offset=332
              i32.store offset=4
              local.get 5
              i32.const 624
              i32.add
              global.set 0
              return
            end
            local.get 5
            i32.const 312
            i32.add
            local.get 2
            i32.const 72215
            local.get 3
            local.get 4
            i32.const 5
            i32.const 1
            call $runtime.sliceAppend
            i32.const 0
            local.get 6
            i32.store offset=83624
            local.get 5
            i32.const 476
            i32.add
            local.get 5
            i32.load offset=312
            local.tee 1
            i32.store
            local.get 0
            local.get 5
            i32.load offset=320
            i32.store offset=8
            local.get 0
            local.get 1
            i32.store
            local.get 0
            local.get 5
            i32.load offset=316
            i32.store offset=4
            local.get 5
            i32.const 624
            i32.add
            global.set 0
            return
          end
          local.get 5
          i32.const 296
          i32.add
          local.get 2
          i32.const 72211
          local.get 3
          local.get 4
          i32.const 4
          i32.const 1
          call $runtime.sliceAppend
          i32.const 0
          local.get 6
          i32.store offset=83624
          local.get 5
          i32.const 472
          i32.add
          local.get 5
          i32.load offset=296
          local.tee 1
          i32.store
          local.get 0
          local.get 5
          i32.load offset=304
          i32.store offset=8
          local.get 0
          local.get 1
          i32.store
          local.get 0
          local.get 5
          i32.load offset=300
          i32.store offset=4
          local.get 5
          i32.const 624
          i32.add
          global.set 0
          return
        end
        local.get 5
        i32.const 0
        i32.store offset=356
        local.get 5
        i32.const 440
        i32.add
        local.get 5
        i32.const 356
        i32.add
        i32.store
        local.get 5
        i32.const 91
        i32.store8 offset=356
        local.get 5
        i32.const 248
        i32.add
        local.get 2
        local.get 5
        i32.const 356
        i32.add
        local.get 3
        local.get 4
        i32.const 1
        i32.const 1
        call $runtime.sliceAppend
        local.get 5
        i32.const 444
        i32.add
        local.get 5
        i32.load offset=248
        local.tee 3
        i32.store
        local.get 5
        i32.const 448
        i32.add
        local.get 1
        i32.load offset=16
        local.tee 10
        i32.store
        local.get 5
        i32.const 456
        i32.add
        local.get 5
        i32.const 352
        i32.add
        i32.store
        local.get 1
        i32.const 20
        i32.add
        i32.load
        local.tee 27
        i32.const 0
        local.get 27
        i32.const 0
        i32.gt_s
        select
        local.set 26
        local.get 5
        i32.load offset=256
        local.set 4
        local.get 5
        i32.load offset=252
        local.set 7
        local.get 5
        i32.const 408
        i32.add
        i32.const 44
        i32.add
        local.set 8
        local.get 5
        i32.const 584
        i32.add
        local.set 9
        local.get 5
        i32.const 588
        i32.add
        local.set 12
        local.get 5
        i32.const 592
        i32.add
        local.set 13
        local.get 5
        i32.const 460
        i32.add
        local.set 14
        i32.const 0
        local.set 2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 8
            local.get 3
            i32.store
            local.get 26
            local.get 2
            i32.eq
            br_if 1 (;@3;)
            local.get 27
            local.get 2
            i32.eq
            br_if 2 (;@2;)
            local.get 9
            local.get 10
            i32.load
            local.tee 11
            i32.store
            local.get 5
            i32.const 232
            i32.add
            local.get 11
            local.get 3
            local.get 7
            local.get 4
            call $_*github.com/valyala/fastjson.Value_.MarshalTo
            local.get 12
            local.get 5
            i32.load offset=232
            local.tee 3
            i32.store
            local.get 13
            local.get 1
            i32.load offset=16
            i32.store
            local.get 5
            i32.load offset=240
            local.set 4
            local.get 5
            i32.load offset=236
            local.set 7
            block  ;; label = @5
              local.get 2
              local.get 1
              i32.load offset=20
              i32.const -1
              i32.add
              i32.eq
              br_if 0 (;@5;)
              local.get 5
              i32.const 0
              i32.store offset=352
              local.get 5
              i32.const 44
              i32.store8 offset=352
              local.get 5
              i32.const 216
              i32.add
              local.get 3
              local.get 5
              i32.const 352
              i32.add
              local.get 7
              local.get 4
              i32.const 1
              i32.const 1
              call $runtime.sliceAppend
              local.get 14
              local.get 5
              i32.load offset=216
              local.tee 3
              i32.store
              local.get 5
              i32.load offset=224
              local.set 4
              local.get 5
              i32.load offset=220
              local.set 7
            end
            local.get 10
            i32.const 4
            i32.add
            local.set 10
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            br 0 (;@4;)
          end
        end
        local.get 5
        i32.const 0
        i32.store offset=348
        local.get 5
        i32.const 464
        i32.add
        local.get 5
        i32.const 348
        i32.add
        i32.store
        local.get 5
        i32.const 93
        i32.store8 offset=348
        local.get 5
        i32.const 200
        i32.add
        local.get 3
        local.get 5
        i32.const 348
        i32.add
        local.get 7
        local.get 4
        i32.const 1
        i32.const 1
        call $runtime.sliceAppend
        i32.const 0
        local.get 6
        i32.store offset=83624
        local.get 5
        i32.const 468
        i32.add
        local.get 5
        i32.load offset=200
        local.tee 1
        i32.store
        local.get 0
        local.get 5
        i32.load offset=208
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store
        local.get 0
        local.get 5
        i32.load offset=204
        i32.store offset=4
        local.get 5
        i32.const 624
        i32.add
        global.set 0
        return
      end
      call $runtime.lookupPanic
      unreachable
    end
    local.get 5
    i32.const 0
    i32.store offset=364
    local.get 5
    i32.const 416
    i32.add
    local.get 5
    i32.const 364
    i32.add
    i32.store
    local.get 5
    i32.const 34
    i32.store8 offset=364
    local.get 5
    i32.const 40
    i32.add
    local.get 2
    local.get 5
    i32.const 364
    i32.add
    local.get 3
    local.get 4
    i32.const 1
    i32.const 1
    call $runtime.sliceAppend
    local.get 5
    i32.const 420
    i32.add
    local.get 5
    i32.load offset=40
    local.tee 2
    i32.store
    local.get 5
    i32.const 424
    i32.add
    local.get 1
    i32.load offset=28
    local.tee 3
    i32.store
    local.get 5
    i32.const 24
    i32.add
    local.get 2
    local.get 3
    local.get 5
    i32.load offset=44
    local.get 5
    i32.load offset=48
    local.get 1
    i32.const 32
    i32.add
    i32.load
    i32.const 1
    call $runtime.sliceAppend
    local.get 5
    i32.const 428
    i32.add
    local.get 5
    i32.load offset=24
    local.tee 1
    i32.store
    local.get 5
    i32.const 0
    i32.store offset=360
    local.get 5
    i32.const 432
    i32.add
    local.get 5
    i32.const 360
    i32.add
    i32.store
    local.get 5
    i32.const 34
    i32.store8 offset=360
    local.get 5
    i32.const 8
    i32.add
    local.get 1
    local.get 5
    i32.const 360
    i32.add
    local.get 5
    i32.load offset=28
    local.get 5
    i32.load offset=32
    i32.const 1
    i32.const 1
    call $runtime.sliceAppend
    i32.const 0
    local.get 6
    i32.store offset=83624
    local.get 5
    i32.const 436
    i32.add
    local.get 5
    i32.load offset=8
    local.tee 1
    i32.store
    local.get 0
    local.get 5
    i32.load offset=16
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 5
    i32.load offset=12
    i32.store offset=4
    local.get 5
    i32.const 624
    i32.add
    global.set 0)
  (func $testFn (type 25) (result i32)
    i32.const 1)
  (func $_*fmt.buffer_.write (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 0
    i32.store offset=28
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    i32.const 0
    i32.load offset=83624
    local.set 4
    i32.const 0
    local.get 3
    i32.const 16
    i32.add
    i32.store offset=83624
    local.get 3
    local.get 4
    i32.store offset=16
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    local.get 3
    i32.const 24
    i32.add
    local.get 0
    i32.load
    local.tee 5
    i32.store
    local.get 3
    local.get 5
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    local.get 2
    i32.const 1
    call $runtime.sliceAppend
    i32.const 0
    local.get 4
    i32.store offset=83624
    local.get 3
    i64.load offset=4 align=4
    local.set 6
    local.get 0
    local.get 3
    i32.load
    local.tee 4
    i32.store
    local.get 3
    i32.const 28
    i32.add
    local.get 4
    i32.store
    local.get 0
    local.get 6
    i64.store offset=4 align=4
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func $_*fmt.fmt_.writePadding (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i64.const 0
    i64.store offset=36 align=4
    local.get 2
    i64.const 0
    i64.store offset=28 align=4
    local.get 2
    i64.const 0
    i64.store offset=20 align=4
    local.get 2
    i64.const 7
    i64.store offset=12 align=4
    i32.const 0
    i32.load offset=83624
    local.set 3
    i32.const 0
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=83624
    local.get 2
    local.get 3
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 0
            i32.le_s
            br_if 0 (;@4;)
            local.get 0
            i32.eqz
            br_if 3 (;@1;)
            local.get 2
            i32.const 20
            i32.add
            local.get 0
            i32.load
            local.tee 4
            i32.store
            local.get 4
            i32.eqz
            br_if 3 (;@1;)
            local.get 2
            i32.const 24
            i32.add
            local.get 4
            i32.load
            local.tee 5
            i32.store
            local.get 4
            i32.load offset=4
            local.tee 6
            local.get 1
            i32.add
            local.tee 7
            local.get 4
            i32.load offset=8
            local.tee 8
            i32.le_s
            br_if 1 (;@3;)
            local.get 8
            i32.const 1
            i32.shl
            local.get 1
            i32.add
            local.tee 8
            i32.const 0
            i32.lt_s
            br_if 2 (;@2;)
            local.get 2
            i32.const 28
            i32.add
            local.get 8
            call $runtime.alloc
            local.tee 5
            i32.store
            local.get 2
            i32.const 32
            i32.add
            local.get 0
            i32.load
            local.tee 4
            i32.store
            local.get 4
            i32.eqz
            br_if 3 (;@1;)
            local.get 2
            i32.const 36
            i32.add
            local.get 4
            i32.load
            local.tee 9
            i32.store
            local.get 5
            local.get 9
            local.get 8
            local.get 4
            i32.load offset=4
            local.tee 4
            local.get 4
            local.get 8
            i32.gt_u
            select
            call $memmove
            drop
            br 1 (;@3;)
          end
          i32.const 0
          local.get 3
          i32.store offset=83624
          local.get 2
          i32.const 48
          i32.add
          global.set 0
          return
        end
        local.get 2
        i32.const 16
        i32.add
        local.get 5
        i32.store
        local.get 6
        local.get 7
        i32.gt_u
        br_if 0 (;@2;)
        local.get 7
        local.get 8
        i32.gt_u
        br_if 0 (;@2;)
        i32.const 48
        i32.const 32
        local.get 0
        i32.const 10
        i32.add
        i32.load8_u
        select
        local.set 9
        local.get 5
        local.get 6
        i32.add
        local.set 4
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.eqz
            br_if 1 (;@3;)
            block  ;; label = @5
              local.get 1
              br_if 0 (;@5;)
              call $runtime.lookupPanic
              unreachable
            end
            local.get 4
            local.get 9
            i32.store8
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            local.get 1
            i32.const -1
            i32.add
            local.set 1
            br 0 (;@4;)
          end
        end
        local.get 2
        i32.const 40
        i32.add
        local.get 0
        i32.load
        local.tee 1
        i32.store
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 5
        i32.store
        local.get 1
        local.get 8
        i32.store offset=8
        local.get 1
        local.get 7
        i32.store offset=4
        i32.const 0
        local.get 3
        i32.store offset=83624
        local.get 2
        i32.const 48
        i32.add
        global.set 0
        return
      end
      call $runtime.slicePanic
      unreachable
    end
    call $runtime.nilPanic
    unreachable)
  (func $_*fmt.fmt_.fmtSbx (type 21) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 144
    i32.sub
    local.tee 6
    global.set 0
    local.get 6
    i64.const 60129542144
    i64.store offset=80
    local.get 6
    i64.const 0
    i64.store offset=136
    local.get 6
    i64.const 0
    i64.store offset=128
    local.get 6
    i64.const 0
    i64.store offset=120
    local.get 6
    i64.const 0
    i64.store offset=112
    local.get 6
    i64.const 0
    i64.store offset=104
    local.get 6
    i64.const 0
    i64.store offset=96
    local.get 6
    i64.const 0
    i64.store offset=88
    i32.const 0
    i32.load offset=83624
    local.set 7
    i32.const 0
    local.get 6
    i32.const 80
    i32.add
    i32.store offset=83624
    local.get 6
    local.get 7
    i32.store offset=80
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      local.get 2
      local.get 3
      select
      local.set 8
      block  ;; label = @2
        local.get 0
        i32.const 5
        i32.add
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=20
        local.tee 9
        local.get 8
        local.get 9
        local.get 8
        i32.lt_s
        select
        local.set 8
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 8
            i32.const 1
            i32.shl
            local.tee 9
            i32.const 0
            i32.le_s
            br_if 0 (;@4;)
            local.get 0
            i32.const 8
            i32.add
            i32.load8_u
            local.set 10
            block  ;; label = @5
              local.get 0
              i32.const 9
              i32.add
              i32.load8_u
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              local.get 8
              i32.const 2
              i32.shl
              local.get 9
              local.get 10
              i32.const 1
              i32.and
              select
              i32.add
              i32.const -1
              i32.add
              local.set 11
              br 2 (;@3;)
            end
            local.get 9
            i32.const 2
            i32.add
            local.get 9
            local.get 10
            i32.const 1
            i32.and
            select
            local.set 11
            br 1 (;@3;)
          end
          local.get 0
          i32.load8_u offset=4
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 0
          i32.load offset=16
          call $_*fmt.fmt_.writePadding
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 0
          i32.load8_u offset=4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=16
          local.tee 9
          local.get 11
          i32.le_s
          br_if 0 (;@3;)
          local.get 0
          i32.const 6
          i32.add
          i32.load8_u
          br_if 0 (;@3;)
          local.get 0
          local.get 9
          local.get 11
          i32.sub
          call $_*fmt.fmt_.writePadding
        end
        local.get 6
        i32.const 116
        i32.add
        local.get 0
        i32.load
        local.tee 10
        i32.store
        local.get 10
        i32.eqz
        br_if 1 (;@1;)
        local.get 6
        i32.const 120
        i32.add
        local.get 10
        i32.load
        local.tee 9
        i32.store
        local.get 10
        i32.load offset=8
        local.set 12
        local.get 10
        i32.load offset=4
        local.set 10
        block  ;; label = @3
          local.get 0
          i32.load8_u offset=8
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          i32.const 0
          i32.store offset=76
          local.get 6
          local.get 5
          i32.load8_u offset=16
          i32.store8 offset=77
          local.get 6
          i32.const 124
          i32.add
          local.get 6
          i32.const 76
          i32.add
          i32.store
          local.get 6
          i32.const 48
          i32.store8 offset=76
          local.get 6
          i32.const 48
          i32.add
          local.get 9
          local.get 6
          i32.const 76
          i32.add
          local.get 10
          local.get 12
          i32.const 2
          i32.const 1
          call $runtime.sliceAppend
          local.get 6
          i32.const 80
          i32.add
          i32.const 48
          i32.add
          local.get 6
          i32.load offset=48
          local.tee 9
          i32.store
          local.get 6
          i32.load offset=56
          local.set 12
          local.get 6
          i32.load offset=52
          local.set 10
        end
        local.get 6
        i32.const 88
        i32.add
        local.get 9
        i32.store
        local.get 6
        i32.const 132
        i32.add
        local.get 6
        i32.const 68
        i32.add
        i32.store
        local.get 6
        i32.const 96
        i32.add
        local.get 6
        i32.const 72
        i32.add
        i32.store
        local.get 6
        i32.const 108
        i32.add
        local.get 6
        i32.const 64
        i32.add
        i32.store
        local.get 8
        i32.const 0
        local.get 8
        i32.const 0
        i32.gt_s
        select
        local.set 13
        local.get 6
        i32.const 92
        i32.add
        local.set 14
        local.get 6
        i32.const 100
        i32.add
        local.set 15
        local.get 6
        i32.const 136
        i32.add
        local.set 16
        local.get 6
        i32.const 104
        i32.add
        local.set 17
        i32.const 0
        local.set 8
        loop  ;; label = @3
          local.get 14
          local.get 9
          i32.store
          block  ;; label = @4
            block  ;; label = @5
              local.get 13
              local.get 8
              i32.eq
              br_if 0 (;@5;)
              local.get 8
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              i32.load8_u offset=9
              i32.const 1
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              local.get 6
              i32.const 0
              i32.store offset=72
              local.get 6
              i32.const 32
              i32.store8 offset=72
              local.get 6
              i32.const 32
              i32.add
              local.get 9
              local.get 6
              i32.const 72
              i32.add
              local.get 10
              local.get 12
              i32.const 1
              i32.const 1
              call $runtime.sliceAppend
              local.get 15
              local.get 6
              i32.load offset=32
              local.tee 9
              i32.store
              local.get 6
              i32.load offset=40
              local.set 12
              local.get 6
              i32.load offset=36
              local.set 10
              local.get 0
              i32.load8_u offset=8
              i32.eqz
              br_if 1 (;@4;)
              local.get 6
              i32.const 0
              i32.store offset=68
              local.get 6
              local.get 5
              i32.load8_u offset=16
              i32.store8 offset=69
              local.get 6
              i32.const 48
              i32.store8 offset=68
              local.get 6
              i32.const 16
              i32.add
              local.get 9
              local.get 6
              i32.const 68
              i32.add
              local.get 10
              local.get 12
              i32.const 2
              i32.const 1
              call $runtime.sliceAppend
              local.get 16
              local.get 6
              i32.load offset=16
              local.tee 9
              i32.store
              local.get 6
              i32.load offset=24
              local.set 12
              local.get 6
              i32.load offset=20
              local.set 10
              br 1 (;@4;)
            end
            local.get 6
            i32.const 140
            i32.add
            local.get 0
            i32.load
            local.tee 8
            i32.store
            local.get 8
            i32.eqz
            br_if 3 (;@1;)
            local.get 8
            local.get 9
            i32.store
            local.get 8
            local.get 10
            i32.store offset=4
            local.get 8
            local.get 12
            i32.store offset=8
            local.get 0
            i32.load8_u offset=4
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            i32.load offset=16
            local.tee 8
            local.get 11
            i32.le_s
            br_if 2 (;@2;)
            local.get 0
            i32.const 6
            i32.add
            i32.load8_u
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            local.get 8
            local.get 11
            i32.sub
            call $_*fmt.fmt_.writePadding
            br 2 (;@2;)
          end
          local.get 17
          local.get 9
          i32.store
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                local.set 18
                local.get 8
                local.get 4
                i32.ge_u
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              local.get 1
              local.set 18
              local.get 8
              local.get 2
              i32.lt_u
              br_if 1 (;@4;)
            end
            call $runtime.lookupPanic
            unreachable
          end
          local.get 6
          i32.const 0
          i32.store offset=64
          local.get 6
          local.get 5
          local.get 18
          local.get 8
          i32.add
          i32.load8_u
          local.tee 18
          i32.const 15
          i32.and
          i32.add
          i32.load8_u
          i32.store8 offset=65
          local.get 6
          local.get 5
          local.get 18
          i32.const 4
          i32.shr_u
          i32.add
          i32.load8_u
          i32.store8 offset=64
          local.get 6
          local.get 9
          local.get 6
          i32.const 64
          i32.add
          local.get 10
          local.get 12
          i32.const 2
          i32.const 1
          call $runtime.sliceAppend
          local.get 6
          i32.const 80
          i32.add
          i32.const 32
          i32.add
          local.get 6
          i32.load
          local.tee 9
          i32.store
          local.get 8
          i32.const 1
          i32.add
          local.set 8
          local.get 6
          i32.load offset=8
          local.set 12
          local.get 6
          i32.load offset=4
          local.set 10
          br 0 (;@3;)
        end
      end
      i32.const 0
      local.get 7
      i32.store offset=83624
      local.get 6
      i32.const 144
      i32.add
      global.set 0
      return
    end
    call $runtime.nilPanic
    unreachable)
  (func $_*fmt.fmt_.truncateString (type 7) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      br_if 0 (;@1;)
      call $runtime.nilPanic
      unreachable
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 5
        i32.add
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=20
        local.set 4
        i32.const 0
        local.set 1
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 3
              i32.lt_s
              br_if 0 (;@5;)
              local.get 1
              local.set 5
              i32.const 0
              local.set 6
              i32.const 0
              local.set 1
              br 1 (;@4;)
            end
            i32.const 1
            local.set 6
            i32.const 1
            local.set 5
            block  ;; label = @5
              local.get 2
              local.get 1
              i32.add
              local.tee 7
              i32.load8_s
              local.tee 8
              i32.const -1
              i32.gt_s
              br_if 0 (;@5;)
              local.get 3
              local.get 1
              i32.sub
              local.set 9
              block  ;; label = @6
                local.get 8
                i32.const -32
                i32.and
                i32.const -64
                i32.ne
                br_if 0 (;@6;)
                i32.const 1
                local.set 5
                local.get 9
                i32.const 2
                i32.lt_u
                br_if 1 (;@5;)
                i32.const 1
                i32.const 2
                local.get 7
                i32.const 1
                i32.add
                i32.load8_u
                i32.const 192
                i32.and
                i32.const 128
                i32.ne
                select
                i32.const 1
                local.get 8
                i32.const 30
                i32.and
                select
                local.set 5
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 8
                i32.const -16
                i32.and
                i32.const -32
                i32.ne
                br_if 0 (;@6;)
                i32.const 1
                local.set 5
                local.get 9
                i32.const 3
                i32.lt_u
                br_if 1 (;@5;)
                i32.const 1
                local.set 5
                local.get 7
                i32.const 1
                i32.add
                i32.load8_u
                local.tee 9
                i32.const 192
                i32.and
                i32.const 128
                i32.ne
                br_if 1 (;@5;)
                local.get 7
                i32.const 2
                i32.add
                i32.load8_u
                i32.const 192
                i32.and
                i32.const 128
                i32.ne
                br_if 1 (;@5;)
                i32.const 1
                i32.const 1
                i32.const 3
                local.get 9
                i32.const 63
                i32.and
                i32.const 6
                i32.shl
                local.get 8
                i32.const 15
                i32.and
                i32.const 12
                i32.shl
                i32.or
                local.tee 5
                i32.const 63488
                i32.and
                i32.const 55296
                i32.eq
                select
                local.get 5
                i32.const 2048
                i32.lt_u
                select
                local.set 5
                br 1 (;@5;)
              end
              i32.const 1
              local.set 5
              local.get 9
              i32.const 4
              i32.lt_u
              br_if 0 (;@5;)
              i32.const 1
              local.set 5
              local.get 8
              i32.const 248
              i32.and
              i32.const 240
              i32.ne
              br_if 0 (;@5;)
              i32.const 1
              local.set 5
              local.get 7
              i32.const 1
              i32.add
              i32.load8_u
              local.tee 9
              i32.const 192
              i32.and
              i32.const 128
              i32.ne
              br_if 0 (;@5;)
              local.get 7
              i32.const 2
              i32.add
              i32.load8_u
              local.tee 10
              i32.const 192
              i32.and
              i32.const 128
              i32.ne
              br_if 0 (;@5;)
              local.get 7
              i32.const 3
              i32.add
              i32.load8_u
              local.tee 7
              i32.const 192
              i32.and
              i32.const 128
              i32.ne
              br_if 0 (;@5;)
              i32.const 4
              i32.const 1
              local.get 9
              i32.const 63
              i32.and
              i32.const 12
              i32.shl
              local.get 8
              i32.const 7
              i32.and
              i32.const 18
              i32.shl
              i32.or
              local.get 10
              i32.const 63
              i32.and
              i32.const 6
              i32.shl
              i32.or
              local.get 7
              i32.const 63
              i32.and
              i32.or
              i32.const -65536
              i32.add
              i32.const 1048576
              i32.lt_u
              select
              local.set 5
            end
            local.get 5
            local.get 1
            i32.add
            local.set 5
          end
          local.get 1
          local.set 8
          local.get 6
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 5
          local.set 1
          local.get 4
          i32.const -1
          i32.add
          local.tee 4
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
        end
        local.get 8
        local.get 3
        i32.le_u
        br_if 1 (;@1;)
        call $runtime.slicePanic
        unreachable
      end
      local.get 0
      local.get 3
      i32.store offset=4
      local.get 0
      local.get 2
      i32.store
      return
    end
    local.get 0
    local.get 8
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store)
  (func $memmove (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        local.get 0
        i32.sub
        local.get 2
        i32.sub
        i32.const 0
        local.get 2
        i32.const 1
        i32.shl
        i32.sub
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        local.get 2
        call $memcpy
        drop
        br 1 (;@1;)
      end
      local.get 1
      local.get 0
      i32.xor
      i32.const 3
      i32.and
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 1
            i32.ge_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              local.set 3
              br 3 (;@2;)
            end
            block  ;; label = @5
              local.get 0
              i32.const 3
              i32.and
              br_if 0 (;@5;)
              local.get 0
              local.set 3
              br 2 (;@3;)
            end
            local.get 0
            local.set 3
            loop  ;; label = @5
              local.get 2
              i32.eqz
              br_if 4 (;@1;)
              local.get 3
              local.get 1
              i32.load8_u
              i32.store8
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 2
              i32.const -1
              i32.add
              local.set 2
              local.get 3
              i32.const 1
              i32.add
              local.tee 3
              i32.const 3
              i32.and
              i32.eqz
              br_if 2 (;@3;)
              br 0 (;@5;)
            end
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.set 3
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                local.get 2
                i32.add
                i32.const 3
                i32.and
                br_if 0 (;@6;)
                local.get 2
                local.set 3
                br 1 (;@5;)
              end
              local.get 1
              i32.const -1
              i32.add
              local.set 4
              local.get 0
              i32.const -1
              i32.add
              local.set 5
              loop  ;; label = @6
                local.get 2
                i32.eqz
                br_if 5 (;@1;)
                local.get 5
                local.get 2
                i32.add
                local.tee 6
                local.get 4
                local.get 2
                i32.add
                i32.load8_u
                i32.store8
                local.get 2
                i32.const -1
                i32.add
                local.tee 3
                local.set 2
                local.get 6
                i32.const 3
                i32.and
                br_if 0 (;@6;)
              end
            end
            local.get 3
            i32.const 4
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            i32.const -4
            i32.add
            local.set 2
            local.get 1
            i32.const -4
            i32.add
            local.set 6
            loop  ;; label = @5
              local.get 2
              local.get 3
              i32.add
              local.get 6
              local.get 3
              i32.add
              i32.load
              i32.store
              local.get 3
              i32.const -4
              i32.add
              local.tee 3
              i32.const 3
              i32.gt_u
              br_if 0 (;@5;)
            end
          end
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          i32.const -1
          i32.add
          local.set 1
          local.get 0
          i32.const -1
          i32.add
          local.set 2
          loop  ;; label = @4
            local.get 2
            local.get 3
            i32.add
            local.get 1
            local.get 3
            i32.add
            i32.load8_u
            i32.store8
            local.get 3
            i32.const -1
            i32.add
            local.tee 3
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        local.get 2
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        loop  ;; label = @3
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
          local.get 2
          i32.const -4
          i32.add
          local.tee 2
          i32.const 3
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $memcpy (type 6) (param i32 i32 i32) (result i32)
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
  (func $memset (type 6) (param i32 i32 i32) (result i32)
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
  (export "_start" (func $_start))
  (export "testFn" (func $testFn))
  (data (;0;) (i32.const 65536) "\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f0\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\13\03\03\03\03\03\03\03\03\03\03\03\03#\03\034\04\04\04D\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\f1\80\bf\a0\bf\80\9f\90\bf\80\8f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00unimplemented: alignment of type \01\01\00 \00\00\00\00\00\00\00\00\00\00\00unimplemented: (reflect.Type).Elem()\00\00\00\00P\01\01\00$\00\00\00Field\00\00\00\00\00\00\00\00\00\00\00reflect: field index out of range\00\00\00\00\00\00\00\90\01\01\00!\00\00\00<unimplemented>NumField\00\00\00\00\00\00\00\00\00unimplemented: size of type\00\00\00\00\00\e0\01\01\00\1b\00\00\00TBool\00\00\00unimplemented: (reflect.Value).Bytes()\00\00\10\02\01\00&\00\00\00unimplemented: (reflect.Value).CanAddr()@\02\01\00(\00\00\00ComplexElemFloatreflect: slice index out of range\00\00\00\00\00\00\00\80\02\01\00!\00\00\00reflect: string index out of range\00\00\00\00\00\00\b0\02\01\00\22\00\00\00IndexIntIsNilLenunimplemented: (reflect.Value).MapRange()\00\00\00\00\00\00\00\f0\02\01\00)\00\00\00\00\00\00\00\00\00\00\00unimplemented: (reflect.Value).Pointer()0\03\01\00(\00\00\00Pointer<T>Uint\00\00bad type in compare: \00\00\00\00\00\00\00\00\00\00\00\00\01\02\02\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\00\00\01\00\02\00\03\00\04\00\05\00\06\00\07\00\08\00\09\00\0a\00\0b\00\0c\00\0d\00\0e\00\0f\00\10\00\11\00\12\00\13\00\14\00\15\00\16\00\17\00\18\00\19\00\1a\00\1b\00\1c\00\1d\00\1e\00\1f\00 \00!\00\22\00#\00$\00%\00&\00'\00(\00)\00*\00+\00,\00-\00.\00/\000\001\002\003\004\005\006\007\008\009\00:\00;\00<\00=\00>\00?\00@\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00[\00\5c\00]\00^\00_\00`\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00*!L\00M\00N\00O\00P\00Q\00R\00\7f\01T\00U\00V\00W\00X\00Y\00Z\00{\00|\00}\00~\00\7f\00operation not supported/dev/stdout\00\00\00\00\00\00\00\00\00\00\00\00\00\00strconv: num > den<<shift in adjustLastDigitFixed\00\00\00\00\00\00\00\c0\05\01\001\00\00\00strconv: \ce\b5 > (den<<shift)/2\00\00\00\00\00\06\01\00\1c\00\00\00\5ca\5cb\5cf\5cn\5cr\5ct\5cv\5cu\5cU\5cx0123456789abcdef0123456789ABCDEF\00\00\00\0000010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00\00\00\00\00\00\00\00\88\02\1c\08\a0\d5\8f\fa<\fb\ff\ff\00\00\00\00v\bf>\a2\7f\e1\ae\baW\fb\ff\ff\00\00\00\00v\acU0 \fb\16\8br\fb\ff\ff\00\00\00\00\ea5\ce]J\89B\cf\8c\fb\ff\ff\00\00\00\00-;eU\aa\b0k\9a\a7\fb\ff\ff\00\00\00\00\dfE\1a=\03\cf\1a\e6\c1\fb\ff\ff\00\00\00\00\ca\c6\9a\c7\17\fep\ab\dc\fb\ff\ff\00\00\00\00O\dc\bc\be\fc\b1w\ff\f6\fb\ff\ff\00\00\00\00\0c\d6kA\ef\91V\be\11\fc\ff\ff\00\00\00\00<\fc\7f\90\ad\1f\d0\8d,\fc\ff\ff\00\00\00\00\83\9aU1(\5cQ\d3F\fc\ff\ff\00\00\00\00\b5\c9\a6\ad\8f\acq\9da\fc\ff\ff\00\00\00\00\cb\8b\ee#w\22\9c\ea{\fc\ff\ff\00\00\00\00mSx@\91I\cc\ae\96\fc\ff\ff\00\00\00\00W\ce\b6]y\12<\82\b1\fc\ff\ff\00\00\00\007V\fbM6\94\10\c2\cb\fc\ff\ff\00\00\00\00O\98H8o\ea\96\90\e6\fc\ff\ff\00\00\00\00\c7:\82%\cb\85t\d7\00\fd\ff\ff\00\00\00\00\f4\97\bf\97\cd\cf\86\a0\1b\fd\ff\ff\00\00\00\00\e5\ac*\17\98\0a4\ef5\fd\ff\ff\00\00\00\00\8e\b25*\fbg8\b2P\fd\ff\ff\00\00\00\00;?\c6\d2\df\d4\c8\84k\fd\ff\ff\00\00\00\00\ba\cd\d3\1a'D\dd\c5\85\fd\ff\ff\00\00\00\00\96\c9%\bb\ce\9fk\93\a0\fd\ff\ff\00\00\00\00\84\a5b}$l\ac\db\ba\fd\ff\ff\00\00\00\00\f6\da_\0dXf\ab\a3\d5\fd\ff\ff\00\00\00\00&\f1\c3\de\93\f8\e2\f3\ef\fd\ff\ff\00\00\00\00\b8\80\ff\aa\a8\ad\b5\b5\0a\fe\ff\ff\00\00\00\00\8bJ|l\05_b\87%\fe\ff\ff\00\00\00\00S0\c14`\ff\bc\c9?\fe\ff\ff\00\00\00\00U&\ba\91\8c\85N\96Z\fe\ff\ff\00\00\00\00\bd~)p$w\f9\dft\fe\ff\ff\00\00\00\00\8f\b8\e5\b8\9f\bd\df\a6\8f\fe\ff\ff\00\00\00\00\94}t\88\cf_\a9\f8\a9\fe\ff\ff\00\00\00\00\cf\9b\a8\8f\93pD\b9\c4\fe\ff\ff\00\00\00\00k\15\0f\bf\f8\f0\08\8a\df\fe\ff\ff\00\00\00\00\b611eU%\b0\cd\f9\fe\ff\ff\00\00\00\00\ac\7f{\d0\c6\e2?\99\14\ff\ff\ff\00\00\00\00\06;+*\c4\10\5c\e4.\ff\ff\ff\00\00\00\00\d3\92si\99$$\aaI\ff\ff\ff\00\00\00\00\0e\ca\00\83\f2\b5\87\fdc\ff\ff\ff\00\00\00\00\eb\1a\11\92d\08\e5\bc~\ff\ff\ff\00\00\00\00\cc\88Po\09\cc\bc\8c\99\ff\ff\ff\00\00\00\00,e\19\e2X\17\b7\d1\b3\ff\ff\ff\00\00\00\00\00\00\00\00\00\00@\9c\ce\ff\ff\ff\00\00\00\00\00\00\00\00\10\a5\d4\e8\e8\ff\ff\ff\00\00\00\00\00\00b\ac\c5\ebx\ad\03\00\00\00\00\00\00\00\84\09\94\f8x9?\81\1e\00\00\00\00\00\00\00\b3\15\07\c9{\ce\97\c08\00\00\00\00\00\00\00p\5c\ea{\ce2~\8fS\00\00\00\00\00\00\00h\80\e9\ab\a48\d2\d5m\00\00\00\00\00\00\00E\22\9a\17&'O\9f\88\00\00\00\00\00\00\00'\fb\c4\d41\a2c\ed\a2\00\00\00\00\00\00\00\a8\ad\c8\8c8e\de\b0\bd\00\00\00\00\00\00\00\dbe\ab\1a\8e\08\c7\83\d8\00\00\00\00\00\00\00\9a\1dqB\f9\1d]\c4\f2\00\00\00\00\00\00\00X\e7\1b\a6,iM\92\0d\01\00\00\00\00\00\00\ea\8dp\1ad\ee\01\da'\01\00\00\00\00\00\00Jw\ef\9a\99\a3m\a2B\01\00\00\00\00\00\00\85k}\b4{x\09\f2\5c\01\00\00\00\00\00\00w\18\ddy\a1\e4T\b4w\01\00\00\00\00\00\00\c2\c5\9b[\92\86[\86\92\01\00\00\00\00\00\00=]\96\c8\c5S5\c8\ac\01\00\00\00\00\00\00\b3\a0\97\fa\5c\b4*\95\c7\01\00\00\00\00\00\00\e3_\a0\99\bd\9fF\de\e1\01\00\00\00\00\00\00%\8c9\db4\c2\9b\a5\fc\01\00\00\00\00\00\00\5c\9f\98\a3r\9a\c6\f6\16\02\00\00\00\00\00\00\ce\be\e9TS\bf\dc\b71\02\00\00\00\00\00\00\e2A\22\f2\17\f3\fc\88L\02\00\00\00\00\00\00\a5x\5c\d3\9b\ce \ccf\02\00\00\00\00\00\00\dfS!{\f3Z\16\98\81\02\00\00\00\00\00\00:0\1f\97\dc\b5\a0\e2\9b\02\00\00\00\00\00\00\96\b3\e3\5cS\d1\d9\a8\b6\02\00\00\00\00\00\00<D\a7\a4\d9|\9b\fb\d0\02\00\00\00\00\00\00\10D\a4\a7LLv\bb\eb\02\00\00\00\00\00\00\1a\9c@\b6\ef\8e\ab\8b\06\03\00\00\00\00\00\00,\84W\a6\10\ef\1f\d0 \03\00\00\00\00\00\00)1\91\e9\e5\a4\10\9b;\03\00\00\00\00\00\00\9d\0c\9c\a1\fb\9b\10\e7U\03\00\00\00\00\00\00)\f4;b\d9 (\acp\03\00\00\00\00\00\00\85\cf\a7z^KD\80\8b\03\00\00\00\00\00\00-\dd\ac\03@\e4!\bf\a5\03\00\00\00\00\00\00\8f\ffD^/\9cg\8e\c0\03\00\00\00\00\00\00A\b8\8c\9c\9d\173\d4\da\03\00\00\00\00\00\00\a9\1b\e3\b4\92\db\19\9e\f5\03\00\00\00\00\00\00\d9w\df\ban\bf\96\eb\0f\04\00\00\00\00\00\00k\ee\f0\9b;\02\87\af*\04\00\00\00\00\00\00strconv: illegal AppendFloat/FormatFloat bitSize\a0\0c\01\000\00\00\005251256253125156257812539062519531259765625488281252441406251220703125610351562530517578125152587890625762939453125381469726562519073486328125953674316406254768371582031252384185791015625\00\00\00\00\00\00\00\00\00\00\00\00\0011920928955078125\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0059604644775390625\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00298023223876953125\00\00\00\00\00\00\00\00\00\00\00\00\00\001490116119384765625\00\00\00\00\00\00\00\00\00\00\00\00\007450580596923828125\00\00\00\00\00\00\00\00\00\00\00\00\0037252902984619140625\00\00\00\00\00\00\00\00\00\00\00\00186264514923095703125\00\00\00\00\00\00\00\00\00\00\00931322574615478515625\00\00\00\00\00\00\00\00\00\00\004656612873077392578125\00\00\00\00\00\00\00\00\00\0023283064365386962890625\00\00\00\00\00\00\00\00\00116415321826934814453125\00\00\00\00\00\00\00\00582076609134674072265625\00\00\00\00\00\00\00\002910383045673370361328125\00\00\00\00\00\00\0014551915228366851806640625\00\00\00\00\00\0072759576141834259033203125\00\00\00\00\00\00363797880709171295166015625\00\00\00\00\001818989403545856475830078125\00\00\00\009094947017729282379150390625\00\00\00\0045474735088646411895751953125\00\00\00227373675443232059478759765625\00\001136868377216160297393798828125\005684341886080801486968994140625\0028421709430404007434844970703125142108547152020037174224853515625\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00710542735760100185871124267578125\00\00\00\00\00\00\00\00\00\00\00\00\00\00\003552713678800500929355621337890625\00\00\00\00\00\00\00\00\00\00\00\00\00\0017763568394002504646778106689453125\00\00\00\00\00\00\00\00\00\00\00\00\0088817841970012523233890533447265625\00\00\00\00\00\00\00\00\00\00\00\00\00444089209850062616169452667236328125\00\00\00\00\00\00\00\00\00\00\00\002220446049250313080847263336181640625\00\00\00\00\00\00\00\00\00\00\0011102230246251565404236316680908203125\00\00\00\00\00\00\00\00\00\0055511151231257827021181583404541015625\00\00\00\00\00\00\00\00\00\00277555756156289135105907917022705078125\00\00\00\00\00\00\00\00\001387778780781445675529539585113525390625\00\00\00\00\00\00\00\006938893903907228377647697925567626953125\00\00\00\00\00\00\00\0034694469519536141888238489627838134765625\00\00\00\00\00\00\00173472347597680709441192448139190673828125\00\00\00\00\00\00867361737988403547205962240695953369140625\00\00\00\00\00\00\01\00\00\00\00\00\00\00\0a\00\00\00\00\00\00\00d\00\00\00\00\00\00\00\e8\03\00\00\00\00\00\00\10'\00\00\00\00\00\00\a0\86\01\00\00\00\00\00@B\0f\00\00\00\00\00\80\96\98\00\00\00\00\00\00\e1\f5\05\00\00\00\00\00\ca\9a;\00\00\00\00\00\e4\0bT\02\00\00\00\00\e8vH\17\00\00\00\00\10\a5\d4\e8\00\00\00\00\a0rN\18\09\00\00\00@z\10\f3Z\00\00\00\80\c6\a4~\8d\03\00\00\00\c1o\f2\86#\00\00\00\8a]xEc\01\00\00d\a7\b3\b6\e0\0d\00\00\e8\89\04#\c7\8aobjectarraystringnumber\00\00\00\00\00\00\00\00\00BUG: unknown Value type: %dmissing ']'\00\00\00\00\00\00\00\00\00\00cannot parse array value: %s\00\00\00\00unexpected end of array\00\00\00\00\00\00\00\00\00missing ',' after array valuemissing '}'\00\00\00\00\00\00\00\00cannot find opening '\22\22 for object key\00\00\00\00\00\00\00\00\00\00cannot parse object key: %s\00\00\00\00\00missing ':' after object key\00\00\00\00cannot parse object value: %s\00\00\00unexpected end of object\00\00\00\00\00\00\00\00missing ',' after object valueinf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00unexpected char: %q\00\00\00\00\00\00\00\00\00\00\00\00\00missing closing '\22'\00\00\00\00\00\00\00\00\00\00\00\00\00cannot parse empty string\00\00\00\00\00\00\00too big depth for the nested JSON; it exceeds %dcannot parse object: %s\00\00\00\00\00\00\00\00\00cannot parse array: %s\00\00\00\00\00\00\00\00\00\00cannot parse string: %snan\00\00\00\00\00\00unexpected value found: %q\00\00\00\00\00\00cannot parse number: %s...panic: out of memory\00\00index out of range\00\00\00\00\00\00\00\00\00\00\00\00\00\00nil pointer dereferenceNaN+Inf-Inf\00\00\00\00\00\00\00\00\00\00\00\00\00\00panic: runtime error: \00\00\00\00\00\00\00\00\00\00slice out of range\00\00\00\00\00\00\00\00\00\00\00\00\00\00{\0a\09\09\09\22str\22: \22bar\22,\0a\09\09\09\22int\22: 123,\0a\09\09\09\22float\22: 1.23,\0a\09\09\09\22bool\22: true,\0a\09\09\09\22arr\22: [1, \22foo\22, {}]\0a\09}reflect: call of reflect.Type.\00\00reflect: call of reflect.Value. on invalid type(BADINDEX)%!(BADWIDTH)%!(BADPREC)%!(NOVERB)%!(EXTRA i))(nil\00\00\00\00\00\000123456789abcdefxErrorString%!(MISSING)[]byte\00\00\00<invalid reflect.Value>map[(nil), <nil>\00\00\00\00\00\00\00\00\00unimplemented: (*reflect.MapIter).Next()\b0\18\01\00(\00\00\00`\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00fmt: unknown base; can't happen\00\f0\18\01\00\1f\00\00\00\00\00\00\00\00\00\00\000123456789ABCDEFX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00strconv: internal error: extFloat.FixedDecimal called with n == 0\00\00\00\00\00\00\00@\19\01\00A\00\00\00strconv: internal error, rest != 0 but needed > 0\00\00\00\00\00\00\00\90\19\01\001\00\00\00cannot parse JSON: %s; unparsed tail: %q\00\00\00\00\00\00\00\00unexpected tail: %qtruefalsenullBUG: unexpected Value type: %dwrite : \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00\0e\00\00\00Q\00\00\00\10\00\00\00\15\00\00\00<\00\00\00 \00\00\00y\00\00\00~\00\00\00\03\00\00\00\88\00\00\00\10D\00\00\00\00\00\00\01\04\22\00\03\04\22\07\04\22\0a\04s\0f\02\00\22\13\00s\17\03\00X)\00$#\00\d0\012\09\00\02E\00\02P\00\02\5c\00\02b\00\02g\00\02m\00\02s\00\02x\00\02~\05\00\e55\1b\01\bf\02<\00\04\85\01\00\04\89\01\00\09\8e\01\0a\00\d7\01\1b\00C\1f\00\ff\01#\00\9f\028\00\02\95\01\00\02\9f\01\00\02\aa\01\00\02\b4\01\00\02\bd\01\00s\c6\01\01\00\22\d1\01\02\00\93\03\d3\01\00\22\da\01\02\04\e7?\df\01\04\e7?\e3\01\00\00\00\00\00\00\00\00\00\00\00\00\00\06Method\02Op\04Path\03Err\03msg\03err\03buf\03arg\05value\08typecode\05flags\03fmt\08fmtFlags\0awidPresent\0bprecPresent\05minus\04plus\05sharp\05space\04zero\05plusV\06sharpV\03wid\04prec\06intbuf\09reordered\0agoodArgNum\09panicking\08erroring\08wrapErrs\0awrappedErr\01s\06handle\04name\03Key\05Value")
  (data (;1;) (i32.const 72736) "\17\00\00\00\08\00\00\00\81\ff\ff\ff\00\00\00\004\00\00\00\0b\00\00\00\01\fc\ff\ff\c0\00\00\00\f0B\01\00A\00\00\00Z\00\00\00\00\00\00\00 \00\00\00\00\00\00\00a\00\00\00z\00\00\00\e0\ff\ff\ff\00\00\00\00\e0\ff\ff\ff\b5\00\00\00\b5\00\00\00\e7\02\00\00\00\00\00\00\e7\02\00\00\c0\00\00\00\d6\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\d8\00\00\00\de\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\e0\00\00\00\f6\00\00\00\e0\ff\ff\ff\00\00\00\00\e0\ff\ff\ff\f8\00\00\00\fe\00\00\00\e0\ff\ff\ff\00\00\00\00\e0\ff\ff\ff\ff\00\00\00\ff\00\00\00y\00\00\00\00\00\00\00y\00\00\00\00\01\00\00/\01\00\00\00\00\11\00\00\00\11\00\00\00\11\000\01\00\000\01\00\00\00\00\00\009\ff\ff\ff\00\00\00\001\01\00\001\01\00\00\18\ff\ff\ff\00\00\00\00\18\ff\ff\ff2\01\00\007\01\00\00\00\00\11\00\00\00\11\00\00\00\11\009\01\00\00H\01\00\00\00\00\11\00\00\00\11\00\00\00\11\00J\01\00\00w\01\00\00\00\00\11\00\00\00\11\00\00\00\11\00x\01\00\00x\01\00\00\00\00\00\00\87\ff\ff\ff\00\00\00\00y\01\00\00~\01\00\00\00\00\11\00\00\00\11\00\00\00\11\00\7f\01\00\00\7f\01\00\00\d4\fe\ff\ff\00\00\00\00\d4\fe\ff\ff\80\01\00\00\80\01\00\00\c3\00\00\00\00\00\00\00\c3\00\00\00\81\01\00\00\81\01\00\00\00\00\00\00\d2\00\00\00\00\00\00\00\82\01\00\00\85\01\00\00\00\00\11\00\00\00\11\00\00\00\11\00\86\01\00\00\86\01\00\00\00\00\00\00\ce\00\00\00\00\00\00\00\87\01\00\00\88\01\00\00\00\00\11\00\00\00\11\00\00\00\11\00\89\01\00\00\8a\01\00\00\00\00\00\00\cd\00\00\00\00\00\00\00\8b\01\00\00\8c\01\00\00\00\00\11\00\00\00\11\00\00\00\11\00\8e\01\00\00\8e\01\00\00\00\00\00\00O\00\00\00\00\00\00\00\8f\01\00\00\8f\01\00\00\00\00\00\00\ca\00\00\00\00\00\00\00\90\01\00\00\90\01\00\00\00\00\00\00\cb\00\00\00\00\00\00\00\91\01\00\00\92\01\00\00\00\00\11\00\00\00\11\00\00\00\11\00\93\01\00\00\93\01\00\00\00\00\00\00\cd\00\00\00\00\00\00\00\94\01\00\00\94\01\00\00\00\00\00\00\cf\00\00\00\00\00\00\00\95\01\00\00\95\01\00\00a\00\00\00\00\00\00\00a\00\00\00\96\01\00\00\96\01\00\00\00\00\00\00\d3\00\00\00\00\00\00\00\97\01\00\00\97\01\00\00\00\00\00\00\d1\00\00\00\00\00\00\00\98\01\00\00\99\01\00\00\00\00\11\00\00\00\11\00\00\00\11\00\9a\01\00\00\9a\01\00\00\a3\00\00\00\00\00\00\00\a3\00\00\00\9c\01\00\00\9c\01\00\00\00\00\00\00\d3\00\00\00\00\00\00\00\9d\01\00\00\9d\01\00\00\00\00\00\00\d5\00\00\00\00\00\00\00\9e\01\00\00\9e\01\00\00\82\00\00\00\00\00\00\00\82\00\00\00\9f\01\00\00\9f\01\00\00\00\00\00\00\d6\00\00\00\00\00\00\00\a0\01\00\00\a5\01\00\00\00\00\11\00\00\00\11\00\00\00\11\00\a6\01\00\00\a6\01\00\00\00\00\00\00\da\00\00\00\00\00\00\00\a7\01\00\00\a8\01\00\00\00\00\11\00\00\00\11\00\00\00\11\00\a9\01\00\00\a9\01\00\00\00\00\00\00\da\00\00\00\00\00\00\00\ac\01\00\00\ad\01\00\00\00\00\11\00\00\00\11\00\00\00\11\00\ae\01\00\00\ae\01\00\00\00\00\00\00\da\00\00\00\00\00\00\00\af\01\00\00\b0\01\00\00\00\00\11\00\00\00\11\00\00\00\11\00\b1\01\00\00\b2\01\00\00\00\00\00\00\d9\00\00\00\00\00\00\00\b3\01\00\00\b6\01\00\00\00\00\11\00\00\00\11\00\00\00\11\00\b7\01\00\00\b7\01\00\00\00\00\00\00\db\00\00\00\00\00\00\00\b8\01\00\00\b9\01\00\00\00\00\11\00\00\00\11\00\00\00\11\00\bc\01\00\00\bd\01\00\00\00\00\11\00\00\00\11\00\00\00\11\00\bf\01\00\00\bf\01\00\008\00\00\00\00\00\00\008\00\00\00\c4\01\00\00\c4\01\00\00\00\00\00\00\02\00\00\00\01\00\00\00\c5\01\00\00\c5\01\00\00\ff\ff\ff\ff\01\00\00\00\00\00\00\00\c6\01\00\00\c6\01\00\00\fe\ff\ff\ff\00\00\00\00\ff\ff\ff\ff\c7\01\00\00\c7\01\00\00\00\00\00\00\02\00\00\00\01\00\00\00\c8\01\00\00\c8\01\00\00\ff\ff\ff\ff\01\00\00\00\00\00\00\00\c9\01\00\00\c9\01\00\00\fe\ff\ff\ff\00\00\00\00\ff\ff\ff\ff\ca\01\00\00\ca\01\00\00\00\00\00\00\02\00\00\00\01\00\00\00\cb\01\00\00\cb\01\00\00\ff\ff\ff\ff\01\00\00\00\00\00\00\00\cc\01\00\00\cc\01\00\00\fe\ff\ff\ff\00\00\00\00\ff\ff\ff\ff\cd\01\00\00\dc\01\00\00\00\00\11\00\00\00\11\00\00\00\11\00\dd\01\00\00\dd\01\00\00\b1\ff\ff\ff\00\00\00\00\b1\ff\ff\ff\de\01\00\00\ef\01\00\00\00\00\11\00\00\00\11\00\00\00\11\00\f1\01\00\00\f1\01\00\00\00\00\00\00\02\00\00\00\01\00\00\00\f2\01\00\00\f2\01\00\00\ff\ff\ff\ff\01\00\00\00\00\00\00\00\f3\01\00\00\f3\01\00\00\fe\ff\ff\ff\00\00\00\00\ff\ff\ff\ff\f4\01\00\00\f5\01\00\00\00\00\11\00\00\00\11\00\00\00\11\00\f6\01\00\00\f6\01\00\00\00\00\00\00\9f\ff\ff\ff\00\00\00\00\f7\01\00\00\f7\01\00\00\00\00\00\00\c8\ff\ff\ff\00\00\00\00\f8\01\00\00\1f\02\00\00\00\00\11\00\00\00\11\00\00\00\11\00 \02\00\00 \02\00\00\00\00\00\00~\ff\ff\ff\00\00\00\00\22\02\00\003\02\00\00\00\00\11\00\00\00\11\00\00\00\11\00:\02\00\00:\02\00\00\00\00\00\00+*\00\00\00\00\00\00;\02\00\00<\02\00\00\00\00\11\00\00\00\11\00\00\00\11\00=\02\00\00=\02\00\00\00\00\00\00]\ff\ff\ff\00\00\00\00>\02\00\00>\02\00\00\00\00\00\00(*\00\00\00\00\00\00?\02\00\00@\02\00\00?*\00\00\00\00\00\00?*\00\00A\02\00\00B\02\00\00\00\00\11\00\00\00\11\00\00\00\11\00C\02\00\00C\02\00\00\00\00\00\00=\ff\ff\ff\00\00\00\00D\02\00\00D\02\00\00\00\00\00\00E\00\00\00\00\00\00\00E\02\00\00E\02\00\00\00\00\00\00G\00\00\00\00\00\00\00F\02\00\00O\02\00\00\00\00\11\00\00\00\11\00\00\00\11\00P\02\00\00P\02\00\00\1f*\00\00\00\00\00\00\1f*\00\00Q\02\00\00Q\02\00\00\1c*\00\00\00\00\00\00\1c*\00\00R\02\00\00R\02\00\00\1e*\00\00\00\00\00\00\1e*\00\00S\02\00\00S\02\00\00.\ff\ff\ff\00\00\00\00.\ff\ff\ffT\02\00\00T\02\00\002\ff\ff\ff\00\00\00\002\ff\ff\ffV\02\00\00W\02\00\003\ff\ff\ff\00\00\00\003\ff\ff\ffY\02\00\00Y\02\00\006\ff\ff\ff\00\00\00\006\ff\ff\ff[\02\00\00[\02\00\005\ff\ff\ff\00\00\00\005\ff\ff\ff\5c\02\00\00\5c\02\00\00O\a5\00\00\00\00\00\00O\a5\00\00`\02\00\00`\02\00\003\ff\ff\ff\00\00\00\003\ff\ff\ffa\02\00\00a\02\00\00K\a5\00\00\00\00\00\00K\a5\00\00c\02\00\00c\02\00\001\ff\ff\ff\00\00\00\001\ff\ff\ffe\02\00\00e\02\00\00(\a5\00\00\00\00\00\00(\a5\00\00f\02\00\00f\02\00\00D\a5\00\00\00\00\00\00D\a5\00\00h\02\00\00h\02\00\00/\ff\ff\ff\00\00\00\00/\ff\ff\ffi\02\00\00i\02\00\00-\ff\ff\ff\00\00\00\00-\ff\ff\ffj\02\00\00j\02\00\00D\a5\00\00\00\00\00\00D\a5\00\00k\02\00\00k\02\00\00\f7)\00\00\00\00\00\00\f7)\00\00l\02\00\00l\02\00\00A\a5\00\00\00\00\00\00A\a5\00\00o\02\00\00o\02\00\00-\ff\ff\ff\00\00\00\00-\ff\ff\ffq\02\00\00q\02\00\00\fd)\00\00\00\00\00\00\fd)\00\00r\02\00\00r\02\00\00+\ff\ff\ff\00\00\00\00+\ff\ff\ffu\02\00\00u\02\00\00*\ff\ff\ff\00\00\00\00*\ff\ff\ff}\02\00\00}\02\00\00\e7)\00\00\00\00\00\00\e7)\00\00\80\02\00\00\80\02\00\00&\ff\ff\ff\00\00\00\00&\ff\ff\ff\82\02\00\00\82\02\00\00C\a5\00\00\00\00\00\00C\a5\00\00\83\02\00\00\83\02\00\00&\ff\ff\ff\00\00\00\00&\ff\ff\ff\87\02\00\00\87\02\00\00*\a5\00\00\00\00\00\00*\a5\00\00\88\02\00\00\88\02\00\00&\ff\ff\ff\00\00\00\00&\ff\ff\ff\89\02\00\00\89\02\00\00\bb\ff\ff\ff\00\00\00\00\bb\ff\ff\ff\8a\02\00\00\8b\02\00\00'\ff\ff\ff\00\00\00\00'\ff\ff\ff\8c\02\00\00\8c\02\00\00\b9\ff\ff\ff\00\00\00\00\b9\ff\ff\ff\92\02\00\00\92\02\00\00%\ff\ff\ff\00\00\00\00%\ff\ff\ff\9d\02\00\00\9d\02\00\00\15\a5\00\00\00\00\00\00\15\a5\00\00\9e\02\00\00\9e\02\00\00\12\a5\00\00\00\00\00\00\12\a5\00\00E\03\00\00E\03\00\00T\00\00\00\00\00\00\00T\00\00\00p\03\00\00s\03\00\00\00\00\11\00\00\00\11\00\00\00\11\00v\03\00\00w\03\00\00\00\00\11\00\00\00\11\00\00\00\11\00{\03\00\00}\03\00\00\82\00\00\00\00\00\00\00\82\00\00\00\7f\03\00\00\7f\03\00\00\00\00\00\00t\00\00\00\00\00\00\00\86\03\00\00\86\03\00\00\00\00\00\00&\00\00\00\00\00\00\00\88\03\00\00\8a\03\00\00\00\00\00\00%\00\00\00\00\00\00\00\8c\03\00\00\8c\03\00\00\00\00\00\00@\00\00\00\00\00\00\00\8e\03\00\00\8f\03\00\00\00\00\00\00?\00\00\00\00\00\00\00\91\03\00\00\a1\03\00\00\00\00\00\00 \00\00\00\00\00\00\00\a3\03\00\00\ab\03\00\00\00\00\00\00 \00\00\00\00\00\00\00\ac\03\00\00\ac\03\00\00\da\ff\ff\ff\00\00\00\00\da\ff\ff\ff\ad\03\00\00\af\03\00\00\db\ff\ff\ff\00\00\00\00\db\ff\ff\ff\b1\03\00\00\c1\03\00\00\e0\ff\ff\ff\00\00\00\00\e0\ff\ff\ff\c2\03\00\00\c2\03\00\00\e1\ff\ff\ff\00\00\00\00\e1\ff\ff\ff\c3\03\00\00\cb\03\00\00\e0\ff\ff\ff\00\00\00\00\e0\ff\ff\ff\cc\03\00\00\cc\03\00\00\c0\ff\ff\ff\00\00\00\00\c0\ff\ff\ff\cd\03\00\00\ce\03\00\00\c1\ff\ff\ff\00\00\00\00\c1\ff\ff\ff\cf\03\00\00\cf\03\00\00\00\00\00\00\08\00\00\00\00\00\00\00\d0\03\00\00\d0\03\00\00\c2\ff\ff\ff\00\00\00\00\c2\ff\ff\ff\d1\03\00\00\d1\03\00\00\c7\ff\ff\ff\00\00\00\00\c7\ff\ff\ff\d5\03\00\00\d5\03\00\00\d1\ff\ff\ff\00\00\00\00\d1\ff\ff\ff\d6\03\00\00\d6\03\00\00\ca\ff\ff\ff\00\00\00\00\ca\ff\ff\ff\d7\03\00\00\d7\03\00\00\f8\ff\ff\ff\00\00\00\00\f8\ff\ff\ff\d8\03\00\00\ef\03\00\00\00\00\11\00\00\00\11\00\00\00\11\00\f0\03\00\00\f0\03\00\00\aa\ff\ff\ff\00\00\00\00\aa\ff\ff\ff\f1\03\00\00\f1\03\00\00\b0\ff\ff\ff\00\00\00\00\b0\ff\ff\ff\f2\03\00\00\f2\03\00\00\07\00\00\00\00\00\00\00\07\00\00\00\f3\03\00\00\f3\03\00\00\8c\ff\ff\ff\00\00\00\00\8c\ff\ff\ff\f4\03\00\00\f4\03\00\00\00\00\00\00\c4\ff\ff\ff\00\00\00\00\f5\03\00\00\f5\03\00\00\a0\ff\ff\ff\00\00\00\00\a0\ff\ff\ff\f7\03\00\00\f8\03\00\00\00\00\11\00\00\00\11\00\00\00\11\00\f9\03\00\00\f9\03\00\00\00\00\00\00\f9\ff\ff\ff\00\00\00\00\fa\03\00\00\fb\03\00\00\00\00\11\00\00\00\11\00\00\00\11\00\fd\03\00\00\ff\03\00\00\00\00\00\00~\ff\ff\ff\00\00\00\00\00\04\00\00\0f\04\00\00\00\00\00\00P\00\00\00\00\00\00\00\10\04\00\00/\04\00\00\00\00\00\00 \00\00\00\00\00\00\000\04\00\00O\04\00\00\e0\ff\ff\ff\00\00\00\00\e0\ff\ff\ffP\04\00\00_\04\00\00\b0\ff\ff\ff\00\00\00\00\b0\ff\ff\ff`\04\00\00\81\04\00\00\00\00\11\00\00\00\11\00\00\00\11\00\8a\04\00\00\bf\04\00\00\00\00\11\00\00\00\11\00\00\00\11\00\c0\04\00\00\c0\04\00\00\00\00\00\00\0f\00\00\00\00\00\00\00\c1\04\00\00\ce\04\00\00\00\00\11\00\00\00\11\00\00\00\11\00\cf\04\00\00\cf\04\00\00\f1\ff\ff\ff\00\00\00\00\f1\ff\ff\ff\d0\04\00\00/\05\00\00\00\00\11\00\00\00\11\00\00\00\11\001\05\00\00V\05\00\00\00\00\00\000\00\00\00\00\00\00\00a\05\00\00\86\05\00\00\d0\ff\ff\ff\00\00\00\00\d0\ff\ff\ff\a0\10\00\00\c5\10\00\00\00\00\00\00`\1c\00\00\00\00\00\00\c7\10\00\00\c7\10\00\00\00\00\00\00`\1c\00\00\00\00\00\00\cd\10\00\00\cd\10\00\00\00\00\00\00`\1c\00\00\00\00\00\00\d0\10\00\00\fa\10\00\00\c0\0b\00\00\00\00\00\00\00\00\00\00\fd\10\00\00\ff\10\00\00\c0\0b\00\00\00\00\00\00\00\00\00\00\a0\13\00\00\ef\13\00\00\00\00\00\00\d0\97\00\00\00\00\00\00\f0\13\00\00\f5\13\00\00\00\00\00\00\08\00\00\00\00\00\00\00\f8\13\00\00\fd\13\00\00\f8\ff\ff\ff\00\00\00\00\f8\ff\ff\ff\80\1c\00\00\80\1c\00\00\92\e7\ff\ff\00\00\00\00\92\e7\ff\ff\81\1c\00\00\81\1c\00\00\93\e7\ff\ff\00\00\00\00\93\e7\ff\ff\82\1c\00\00\82\1c\00\00\9c\e7\ff\ff\00\00\00\00\9c\e7\ff\ff\83\1c\00\00\84\1c\00\00\9e\e7\ff\ff\00\00\00\00\9e\e7\ff\ff\85\1c\00\00\85\1c\00\00\9d\e7\ff\ff\00\00\00\00\9d\e7\ff\ff\86\1c\00\00\86\1c\00\00\a4\e7\ff\ff\00\00\00\00\a4\e7\ff\ff\87\1c\00\00\87\1c\00\00\db\e7\ff\ff\00\00\00\00\db\e7\ff\ff\88\1c\00\00\88\1c\00\00\c2\89\00\00\00\00\00\00\c2\89\00\00\90\1c\00\00\ba\1c\00\00\00\00\00\00@\f4\ff\ff\00\00\00\00\bd\1c\00\00\bf\1c\00\00\00\00\00\00@\f4\ff\ff\00\00\00\00y\1d\00\00y\1d\00\00\04\8a\00\00\00\00\00\00\04\8a\00\00}\1d\00\00}\1d\00\00\e6\0e\00\00\00\00\00\00\e6\0e\00\00\8e\1d\00\00\8e\1d\00\008\8a\00\00\00\00\00\008\8a\00\00\00\1e\00\00\95\1e\00\00\00\00\11\00\00\00\11\00\00\00\11\00\9b\1e\00\00\9b\1e\00\00\c5\ff\ff\ff\00\00\00\00\c5\ff\ff\ff\9e\1e\00\00\9e\1e\00\00\00\00\00\00A\e2\ff\ff\00\00\00\00\a0\1e\00\00\ff\1e\00\00\00\00\11\00\00\00\11\00\00\00\11\00\00\1f\00\00\07\1f\00\00\08\00\00\00\00\00\00\00\08\00\00\00\08\1f\00\00\0f\1f\00\00\00\00\00\00\f8\ff\ff\ff\00\00\00\00\10\1f\00\00\15\1f\00\00\08\00\00\00\00\00\00\00\08\00\00\00\18\1f\00\00\1d\1f\00\00\00\00\00\00\f8\ff\ff\ff\00\00\00\00 \1f\00\00'\1f\00\00\08\00\00\00\00\00\00\00\08\00\00\00(\1f\00\00/\1f\00\00\00\00\00\00\f8\ff\ff\ff\00\00\00\000\1f\00\007\1f\00\00\08\00\00\00\00\00\00\00\08\00\00\008\1f\00\00?\1f\00\00\00\00\00\00\f8\ff\ff\ff\00\00\00\00@\1f\00\00E\1f\00\00\08\00\00\00\00\00\00\00\08\00\00\00H\1f\00\00M\1f\00\00\00\00\00\00\f8\ff\ff\ff\00\00\00\00Q\1f\00\00Q\1f\00\00\08\00\00\00\00\00\00\00\08\00\00\00S\1f\00\00S\1f\00\00\08\00\00\00\00\00\00\00\08\00\00\00U\1f\00\00U\1f\00\00\08\00\00\00\00\00\00\00\08\00\00\00W\1f\00\00W\1f\00\00\08\00\00\00\00\00\00\00\08\00\00\00Y\1f\00\00Y\1f\00\00\00\00\00\00\f8\ff\ff\ff\00\00\00\00[\1f\00\00[\1f\00\00\00\00\00\00\f8\ff\ff\ff\00\00\00\00]\1f\00\00]\1f\00\00\00\00\00\00\f8\ff\ff\ff\00\00\00\00_\1f\00\00_\1f\00\00\00\00\00\00\f8\ff\ff\ff\00\00\00\00`\1f\00\00g\1f\00\00\08\00\00\00\00\00\00\00\08\00\00\00h\1f\00\00o\1f\00\00\00\00\00\00\f8\ff\ff\ff\00\00\00\00p\1f\00\00q\1f\00\00J\00\00\00\00\00\00\00J\00\00\00r\1f\00\00u\1f\00\00V\00\00\00\00\00\00\00V\00\00\00v\1f\00\00w\1f\00\00d\00\00\00\00\00\00\00d\00\00\00x\1f\00\00y\1f\00\00\80\00\00\00\00\00\00\00\80\00\00\00z\1f\00\00{\1f\00\00p\00\00\00\00\00\00\00p\00\00\00|\1f\00\00}\1f\00\00~\00\00\00\00\00\00\00~\00\00\00\80\1f\00\00\87\1f\00\00\08\00\00\00\00\00\00\00\08\00\00\00\88\1f\00\00\8f\1f\00\00\00\00\00\00\f8\ff\ff\ff\00\00\00\00\90\1f\00\00\97\1f\00\00\08\00\00\00\00\00\00\00\08\00\00\00\98\1f\00\00\9f\1f\00\00\00\00\00\00\f8\ff\ff\ff\00\00\00\00\a0\1f\00\00\a7\1f\00\00\08\00\00\00\00\00\00\00\08\00\00\00\a8\1f\00\00\af\1f\00\00\00\00\00\00\f8\ff\ff\ff\00\00\00\00\b0\1f\00\00\b1\1f\00\00\08\00\00\00\00\00\00\00\08\00\00\00\b3\1f\00\00\b3\1f\00\00\09\00\00\00\00\00\00\00\09\00\00\00\b8\1f\00\00\b9\1f\00\00\00\00\00\00\f8\ff\ff\ff\00\00\00\00\ba\1f\00\00\bb\1f\00\00\00\00\00\00\b6\ff\ff\ff\00\00\00\00\bc\1f\00\00\bc\1f\00\00\00\00\00\00\f7\ff\ff\ff\00\00\00\00\be\1f\00\00\be\1f\00\00\db\e3\ff\ff\00\00\00\00\db\e3\ff\ff\c3\1f\00\00\c3\1f\00\00\09\00\00\00\00\00\00\00\09\00\00\00\c8\1f\00\00\cb\1f\00\00\00\00\00\00\aa\ff\ff\ff\00\00\00\00\cc\1f\00\00\cc\1f\00\00\00\00\00\00\f7\ff\ff\ff\00\00\00\00\d0\1f\00\00\d1\1f\00\00\08\00\00\00\00\00\00\00\08\00\00\00\d8\1f\00\00\d9\1f\00\00\00\00\00\00\f8\ff\ff\ff\00\00\00\00\da\1f\00\00\db\1f\00\00\00\00\00\00\9c\ff\ff\ff\00\00\00\00\e0\1f\00\00\e1\1f\00\00\08\00\00\00\00\00\00\00\08\00\00\00\e5\1f\00\00\e5\1f\00\00\07\00\00\00\00\00\00\00\07\00\00\00\e8\1f\00\00\e9\1f\00\00\00\00\00\00\f8\ff\ff\ff\00\00\00\00\ea\1f\00\00\eb\1f\00\00\00\00\00\00\90\ff\ff\ff\00\00\00\00\ec\1f\00\00\ec\1f\00\00\00\00\00\00\f9\ff\ff\ff\00\00\00\00\f3\1f\00\00\f3\1f\00\00\09\00\00\00\00\00\00\00\09\00\00\00\f8\1f\00\00\f9\1f\00\00\00\00\00\00\80\ff\ff\ff\00\00\00\00\fa\1f\00\00\fb\1f\00\00\00\00\00\00\82\ff\ff\ff\00\00\00\00\fc\1f\00\00\fc\1f\00\00\00\00\00\00\f7\ff\ff\ff\00\00\00\00&!\00\00&!\00\00\00\00\00\00\a3\e2\ff\ff\00\00\00\00*!\00\00*!\00\00\00\00\00\00A\df\ff\ff\00\00\00\00+!\00\00+!\00\00\00\00\00\00\ba\df\ff\ff\00\00\00\002!\00\002!\00\00\00\00\00\00\1c\00\00\00\00\00\00\00N!\00\00N!\00\00\e4\ff\ff\ff\00\00\00\00\e4\ff\ff\ff`!\00\00o!\00\00\00\00\00\00\10\00\00\00\00\00\00\00p!\00\00\7f!\00\00\f0\ff\ff\ff\00\00\00\00\f0\ff\ff\ff\83!\00\00\84!\00\00\00\00\11\00\00\00\11\00\00\00\11\00\b6$\00\00\cf$\00\00\00\00\00\00\1a\00\00\00\00\00\00\00\d0$\00\00\e9$\00\00\e6\ff\ff\ff\00\00\00\00\e6\ff\ff\ff\00,\00\00.,\00\00\00\00\00\000\00\00\00\00\00\00\000,\00\00^,\00\00\d0\ff\ff\ff\00\00\00\00\d0\ff\ff\ff`,\00\00a,\00\00\00\00\11\00\00\00\11\00\00\00\11\00b,\00\00b,\00\00\00\00\00\00\09\d6\ff\ff\00\00\00\00c,\00\00c,\00\00\00\00\00\00\1a\f1\ff\ff\00\00\00\00d,\00\00d,\00\00\00\00\00\00\19\d6\ff\ff\00\00\00\00e,\00\00e,\00\00\d5\d5\ff\ff\00\00\00\00\d5\d5\ff\fff,\00\00f,\00\00\d8\d5\ff\ff\00\00\00\00\d8\d5\ff\ffg,\00\00l,\00\00\00\00\11\00\00\00\11\00\00\00\11\00m,\00\00m,\00\00\00\00\00\00\e4\d5\ff\ff\00\00\00\00n,\00\00n,\00\00\00\00\00\00\03\d6\ff\ff\00\00\00\00o,\00\00o,\00\00\00\00\00\00\e1\d5\ff\ff\00\00\00\00p,\00\00p,\00\00\00\00\00\00\e2\d5\ff\ff\00\00\00\00r,\00\00s,\00\00\00\00\11\00\00\00\11\00\00\00\11\00u,\00\00v,\00\00\00\00\11\00\00\00\11\00\00\00\11\00~,\00\00\7f,\00\00\00\00\00\00\c1\d5\ff\ff\00\00\00\00\80,\00\00\e3,\00\00\00\00\11\00\00\00\11\00\00\00\11\00\eb,\00\00\ee,\00\00\00\00\11\00\00\00\11\00\00\00\11\00\f2,\00\00\f3,\00\00\00\00\11\00\00\00\11\00\00\00\11\00\00-\00\00%-\00\00\a0\e3\ff\ff\00\00\00\00\a0\e3\ff\ff'-\00\00'-\00\00\a0\e3\ff\ff\00\00\00\00\a0\e3\ff\ff--\00\00--\00\00\a0\e3\ff\ff\00\00\00\00\a0\e3\ff\ff@\a6\00\00m\a6\00\00\00\00\11\00\00\00\11\00\00\00\11\00\80\a6\00\00\9b\a6\00\00\00\00\11\00\00\00\11\00\00\00\11\00\22\a7\00\00/\a7\00\00\00\00\11\00\00\00\11\00\00\00\11\002\a7\00\00o\a7\00\00\00\00\11\00\00\00\11\00\00\00\11\00y\a7\00\00|\a7\00\00\00\00\11\00\00\00\11\00\00\00\11\00}\a7\00\00}\a7\00\00\00\00\00\00\fcu\ff\ff\00\00\00\00~\a7\00\00\87\a7\00\00\00\00\11\00\00\00\11\00\00\00\11\00\8b\a7\00\00\8c\a7\00\00\00\00\11\00\00\00\11\00\00\00\11\00\8d\a7\00\00\8d\a7\00\00\00\00\00\00\d8Z\ff\ff\00\00\00\00\90\a7\00\00\93\a7\00\00\00\00\11\00\00\00\11\00\00\00\11\00\94\a7\00\00\94\a7\00\000\00\00\00\00\00\00\000\00\00\00\96\a7\00\00\a9\a7\00\00\00\00\11\00\00\00\11\00\00\00\11\00\aa\a7\00\00\aa\a7\00\00\00\00\00\00\bcZ\ff\ff\00\00\00\00\ab\a7\00\00\ab\a7\00\00\00\00\00\00\b1Z\ff\ff\00\00\00\00\ac\a7\00\00\ac\a7\00\00\00\00\00\00\b5Z\ff\ff\00\00\00\00\ad\a7\00\00\ad\a7\00\00\00\00\00\00\bfZ\ff\ff\00\00\00\00\ae\a7\00\00\ae\a7\00\00\00\00\00\00\bcZ\ff\ff\00\00\00\00\b0\a7\00\00\b0\a7\00\00\00\00\00\00\eeZ\ff\ff\00\00\00\00\b1\a7\00\00\b1\a7\00\00\00\00\00\00\d6Z\ff\ff\00\00\00\00\b2\a7\00\00\b2\a7\00\00\00\00\00\00\ebZ\ff\ff\00\00\00\00\b3\a7\00\00\b3\a7\00\00\00\00\00\00\a0\03\00\00\00\00\00\00\b4\a7\00\00\bf\a7\00\00\00\00\11\00\00\00\11\00\00\00\11\00\c2\a7\00\00\c3\a7\00\00\00\00\11\00\00\00\11\00\00\00\11\00\c4\a7\00\00\c4\a7\00\00\00\00\00\00\d0\ff\ff\ff\00\00\00\00\c5\a7\00\00\c5\a7\00\00\00\00\00\00\bdZ\ff\ff\00\00\00\00\c6\a7\00\00\c6\a7\00\00\00\00\00\00\c8u\ff\ff\00\00\00\00S\ab\00\00S\ab\00\00`\fc\ff\ff\00\00\00\00`\fc\ff\ffp\ab\00\00\bf\ab\00\000h\ff\ff\00\00\00\000h\ff\ff!\ff\00\00:\ff\00\00\00\00\00\00 \00\00\00\00\00\00\00A\ff\00\00Z\ff\00\00\e0\ff\ff\ff\00\00\00\00\e0\ff\ff\ff\00\04\01\00'\04\01\00\00\00\00\00(\00\00\00\00\00\00\00(\04\01\00O\04\01\00\d8\ff\ff\ff\00\00\00\00\d8\ff\ff\ff\b0\04\01\00\d3\04\01\00\00\00\00\00(\00\00\00\00\00\00\00\d8\04\01\00\fb\04\01\00\d8\ff\ff\ff\00\00\00\00\d8\ff\ff\ff\80\0c\01\00\b2\0c\01\00\00\00\00\00@\00\00\00\00\00\00\00\c0\0c\01\00\f2\0c\01\00\c0\ff\ff\ff\00\00\00\00\c0\ff\ff\ff\a0\18\01\00\bf\18\01\00\00\00\00\00 \00\00\00\00\00\00\00\c0\18\01\00\df\18\01\00\e0\ff\ff\ff\00\00\00\00\e0\ff\ff\ff@n\01\00_n\01\00\00\00\00\00 \00\00\00\00\00\00\00`n\01\00\7fn\01\00\e0\ff\ff\ff\00\00\00\00\e0\ff\ff\ff\00\e9\01\00!\e9\01\00\00\00\00\00\22\00\00\00\00\00\00\00\22\e9\01\00C\e9\01\00\de\ff\ff\ff\00\00\00\00\de\ff\ff\ffK\00k\00S\00s\00k\00*!s\00\7f\01\b5\00\9c\03\c5\00\e5\00\df\00\9e\1e\e5\00+!0\010\011\011\01\7f\01S\00\c4\01\c5\01\c5\01\c6\01\c6\01\c4\01\c7\01\c8\01\c8\01\c9\01\c9\01\c7\01\ca\01\cb\01\cb\01\cc\01\cc\01\ca\01\f1\01\f2\01\f2\01\f3\01\f3\01\f1\01E\03\99\03\92\03\b2\03\95\03\b5\03\98\03\b8\03\99\03\b9\03\9a\03\ba\03\9c\03\bc\03\a0\03\c0\03\a1\03\c1\03\a3\03\c2\03\a6\03\c6\03\a9\03\c9\03\b2\03\d0\03\b5\03\f5\03\b8\03\d1\03\b9\03\be\1f\ba\03\f0\03\bc\03\b5\00\c0\03\d6\03\c1\03\f1\03\c2\03\c3\03\c3\03\a3\03\c6\03\d5\03\c9\03&!\d0\03\92\03\d1\03\f4\03\d5\03\a6\03\d6\03\a0\03\f0\03\9a\03\f1\03\a1\03\f4\03\98\03\f5\03\95\03\12\042\04\14\044\04\1e\04>\04!\04A\04\22\04B\04*\04J\042\04\80\1c4\04\81\1c>\04\82\1cA\04\83\1cB\04\84\1cJ\04\86\1cb\04c\04c\04\87\1c\80\1c\12\04\81\1c\14\04\82\1c\1e\04\83\1c!\04\84\1c\85\1c\85\1c\22\04\86\1c*\04\87\1cb\04\88\1cJ\a6`\1ea\1ea\1e\9b\1e\9b\1e`\1e\9e\1e\df\00\be\1fE\03&!\a9\03*!K\00+!\c5\00J\a6K\a6K\a6\88\1c \00~\00\a1\00w\03z\03\7f\03\84\03V\05Y\05\8a\05\8d\05\c7\05\d0\05\ea\05\ef\05\f4\05\06\06\1b\06\1e\06\0d\07\10\07J\07M\07\b1\07\c0\07\fa\07\fd\07-\080\08[\08^\08j\08\a0\08\bd\08\d3\08\8c\09\8f\09\90\09\93\09\b2\09\b6\09\b9\09\bc\09\c4\09\c7\09\c8\09\cb\09\ce\09\d7\09\d7\09\dc\09\e3\09\e6\09\fe\09\01\0a\0a\0a\0f\0a\10\0a\13\0a9\0a<\0aB\0aG\0aH\0aK\0aM\0aQ\0aQ\0aY\0a^\0af\0av\0a\81\0a\b9\0a\bc\0a\cd\0a\d0\0a\d0\0a\e0\0a\e3\0a\e6\0a\f1\0a\f9\0a\0c\0b\0f\0b\10\0b\13\0b9\0b<\0bD\0bG\0bH\0bK\0bM\0bV\0bW\0b\5c\0bc\0bf\0bw\0b\82\0b\8a\0b\8e\0b\95\0b\99\0b\9f\0b\a3\0b\a4\0b\a8\0b\aa\0b\ae\0b\b9\0b\be\0b\c2\0b\c6\0b\cd\0b\d0\0b\d0\0b\d7\0b\d7\0b\e6\0b\fa\0b\00\0c9\0c=\0cM\0cU\0cZ\0c`\0cc\0cf\0co\0cw\0c\b9\0c\bc\0c\cd\0c\d5\0c\d6\0c\de\0c\e3\0c\e6\0c\f2\0c\00\0dO\0dT\0dc\0df\0d\7f\0d\82\0d\96\0d\9a\0d\bd\0d\c0\0d\c6\0d\ca\0d\ca\0d\cf\0d\df\0d\e6\0d\ef\0d\f2\0d\f4\0d\01\0e:\0e?\0e[\0e\81\0e\bd\0e\c0\0e\cd\0e\d0\0e\d9\0e\dc\0e\df\0e\00\0fl\0fq\0f\da\0f\00\10\c7\10\cd\10\cd\10\d0\10M\12P\12]\12`\12\8d\12\90\12\b5\12\b8\12\c5\12\c8\12\15\13\18\13Z\13]\13|\13\80\13\99\13\a0\13\f5\13\f8\13\fd\13\00\14\9c\16\a0\16\f8\16\00\17\14\17 \176\17@\17S\17`\17s\17\80\17\dd\17\e0\17\e9\17\f0\17\f9\17\00\18\0d\18\10\18\19\18 \18x\18\80\18\aa\18\b0\18\f5\18\00\19+\190\19;\19@\19@\19D\19m\19p\19t\19\80\19\ab\19\b0\19\c9\19\d0\19\da\19\de\19\1b\1a\1e\1a|\1a\7f\1a\89\1a\90\1a\99\1a\a0\1a\ad\1a\b0\1a\be\1a\00\1bK\1bP\1b|\1b\80\1b\f3\1b\fc\1b7\1c;\1cI\1cM\1c\88\1c\90\1c\ba\1c\bd\1c\c7\1c\d0\1c\fa\1c\00\1d\15\1f\18\1f\1d\1f \1fE\1fH\1fM\1fP\1f}\1f\80\1f\d3\1f\d6\1f\ef\1f\f2\1f\fe\1f\10 ' 0 ^ p q t \9c \a0 \bf \d0 \f0 \00!\8b!\90!&$@$J$`$s+v+\95+\98+\f3,\f9,'-----0-g-o-p-\7f-\96-\a0-O.\80.\f3.\00/\d5/\f0/\fb/\010\960\990\ff0\051\ba1\c01\e31\f01\b5M\c0M\ef\9f\00\a0\8c\a4\90\a4\c6\a4\d0\a4+\a6@\a6\f7\a6\00\a7\bf\a7\c2\a7\c6\a7\f7\a7+\a80\a89\a8@\a8w\a8\80\a8\c5\a8\ce\a8\d9\a8\e0\a8S\a9_\a9|\a9\80\a9\d9\a9\de\a96\aa@\aaM\aaP\aaY\aa\5c\aa\c2\aa\db\aa\f6\aa\01\ab\06\ab\09\ab\0e\ab\11\ab\16\ab \abg\abp\ab\ed\ab\f0\ab\f9\ab\00\ac\a3\d7\b0\d7\c6\d7\cb\d7\fb\d7\00\f9m\fap\fa\d9\fa\00\fb\06\fb\13\fb\17\fb\1d\fb\c1\fb\d3\fb?\fdP\fd\8f\fd\92\fd\c7\fd\f0\fd\fd\fd\00\fe\19\fe \fek\fep\fe\fc\fe\01\ff\be\ff\c2\ff\c7\ff\ca\ff\cf\ff\d2\ff\d7\ff\da\ff\dc\ff\e0\ff\ee\ff\fc\ff\fd\ff\ad\00\8b\03\8d\03\a2\030\05\90\05\dd\06?\08_\08\b5\08\e2\08\84\09\a9\09\b1\09\de\09\04\0a)\0a1\0a4\0a7\0a=\0a]\0a\84\0a\8e\0a\92\0a\a9\0a\b1\0a\b4\0a\c6\0a\ca\0a\00\0b\04\0b)\0b1\0b4\0b^\0b\84\0b\91\0b\9b\0b\9d\0b\c9\0b\0d\0c\11\0c)\0cE\0cI\0cW\0c\8d\0c\91\0c\a9\0c\b4\0c\c5\0c\c9\0c\df\0c\f0\0c\04\0d\0d\0d\11\0dE\0dI\0d\84\0d\b2\0d\bc\0d\d5\0d\d7\0d\83\0e\85\0e\8b\0e\a4\0e\a6\0e\c5\0e\c7\0eH\0f\98\0f\bd\0f\cd\0f\c6\10I\12W\12Y\12\89\12\b1\12\bf\12\c1\12\d7\12\11\13\80\16\0d\17m\17q\17\1f\19_\1a\fa\1dX\1fZ\1f\5c\1f^\1f\b5\1f\c5\1f\dc\1f\f5\1f\8f /,_,&-\a7-\af-\b7-\bf-\c7-\cf-\d7-\df-\9a.@001\8f1\1f2\ff2\ce\a9\ff\a9'\ab/\ab7\fb=\fb?\fbB\fbE\fbS\feg\feu\fe\e7\ff\00\00\01\00M\00\01\00P\00\01\00]\00\01\00\80\00\01\00\fa\00\01\00\00\01\01\00\02\01\01\00\07\01\01\003\01\01\007\01\01\00\9b\01\01\00\a0\01\01\00\a0\01\01\00\d0\01\01\00\fd\01\01\00\80\02\01\00\9c\02\01\00\a0\02\01\00\d0\02\01\00\e0\02\01\00\fb\02\01\00\00\03\01\00#\03\01\00-\03\01\00J\03\01\00P\03\01\00z\03\01\00\80\03\01\00\c3\03\01\00\c8\03\01\00\d5\03\01\00\00\04\01\00\9d\04\01\00\a0\04\01\00\a9\04\01\00\b0\04\01\00\d3\04\01\00\d8\04\01\00\fb\04\01\00\00\05\01\00'\05\01\000\05\01\00c\05\01\00o\05\01\00o\05\01\00\00\06\01\006\07\01\00@\07\01\00U\07\01\00`\07\01\00g\07\01\00\00\08\01\00\05\08\01\00\08\08\01\008\08\01\00<\08\01\00<\08\01\00?\08\01\00\9e\08\01\00\a7\08\01\00\af\08\01\00\e0\08\01\00\f5\08\01\00\fb\08\01\00\1b\09\01\00\1f\09\01\009\09\01\00?\09\01\00?\09\01\00\80\09\01\00\b7\09\01\00\bc\09\01\00\cf\09\01\00\d2\09\01\00\06\0a\01\00\0c\0a\01\005\0a\01\008\0a\01\00:\0a\01\00?\0a\01\00H\0a\01\00P\0a\01\00X\0a\01\00`\0a\01\00\9f\0a\01\00\c0\0a\01\00\e6\0a\01\00\eb\0a\01\00\f6\0a\01\00\00\0b\01\005\0b\01\009\0b\01\00U\0b\01\00X\0b\01\00r\0b\01\00x\0b\01\00\91\0b\01\00\99\0b\01\00\9c\0b\01\00\a9\0b\01\00\af\0b\01\00\00\0c\01\00H\0c\01\00\80\0c\01\00\b2\0c\01\00\c0\0c\01\00\f2\0c\01\00\fa\0c\01\00'\0d\01\000\0d\01\009\0d\01\00`\0e\01\00~\0e\01\00\00\0f\01\00'\0f\01\000\0f\01\00Y\0f\01\00\e0\0f\01\00\f6\0f\01\00\00\10\01\00M\10\01\00R\10\01\00o\10\01\00\7f\10\01\00\c1\10\01\00\d0\10\01\00\e8\10\01\00\f0\10\01\00\f9\10\01\00\00\11\01\00F\11\01\00P\11\01\00v\11\01\00\80\11\01\00\cd\11\01\00\d0\11\01\00\f4\11\01\00\00\12\01\00>\12\01\00\80\12\01\00\a9\12\01\00\b0\12\01\00\ea\12\01\00\f0\12\01\00\f9\12\01\00\00\13\01\00\0c\13\01\00\0f\13\01\00\10\13\01\00\13\13\01\00D\13\01\00G\13\01\00H\13\01\00K\13\01\00M\13\01\00P\13\01\00P\13\01\00W\13\01\00W\13\01\00]\13\01\00c\13\01\00f\13\01\00l\13\01\00p\13\01\00t\13\01\00\00\14\01\00_\14\01\00\80\14\01\00\c7\14\01\00\d0\14\01\00\d9\14\01\00\80\15\01\00\b5\15\01\00\b8\15\01\00\dd\15\01\00\00\16\01\00D\16\01\00P\16\01\00Y\16\01\00`\16\01\00l\16\01\00\80\16\01\00\b8\16\01\00\c0\16\01\00\c9\16\01\00\00\17\01\00\1a\17\01\00\1d\17\01\00+\17\01\000\17\01\00?\17\01\00\00\18\01\00;\18\01\00\a0\18\01\00\f2\18\01\00\ff\18\01\00\ff\18\01\00\a0\19\01\00\a7\19\01\00\aa\19\01\00\d7\19\01\00\da\19\01\00\e4\19\01\00\00\1a\01\00G\1a\01\00P\1a\01\00\a2\1a\01\00\c0\1a\01\00\f8\1a\01\00\00\1c\01\00E\1c\01\00P\1c\01\00l\1c\01\00p\1c\01\00\8f\1c\01\00\92\1c\01\00\b6\1c\01\00\00\1d\01\006\1d\01\00:\1d\01\00G\1d\01\00P\1d\01\00Y\1d\01\00`\1d\01\00\98\1d\01\00\a0\1d\01\00\a9\1d\01\00\e0\1e\01\00\f8\1e\01\00\c0\1f\01\00\f1\1f\01\00\ff\1f\01\00\99#\01\00\00$\01\00t$\01\00\80$\01\00C%\01\00\000\01\00.4\01\00\00D\01\00FF\01\00\00h\01\008j\01\00@j\01\00ij\01\00nj\01\00oj\01\00\d0j\01\00\edj\01\00\f0j\01\00\f5j\01\00\00k\01\00Ek\01\00Pk\01\00wk\01\00}k\01\00\8fk\01\00@n\01\00\9an\01\00\00o\01\00Jo\01\00Oo\01\00\87o\01\00\8fo\01\00\9fo\01\00\e0o\01\00\e3o\01\00\00p\01\00\f7\87\01\00\00\88\01\00\f2\8a\01\00\00\b0\01\00\1e\b1\01\00P\b1\01\00R\b1\01\00d\b1\01\00g\b1\01\00p\b1\01\00\fb\b2\01\00\00\bc\01\00j\bc\01\00p\bc\01\00|\bc\01\00\80\bc\01\00\88\bc\01\00\90\bc\01\00\99\bc\01\00\9c\bc\01\00\9f\bc\01\00\00\d0\01\00\f5\d0\01\00\00\d1\01\00&\d1\01\00)\d1\01\00r\d1\01\00{\d1\01\00\e8\d1\01\00\00\d2\01\00E\d2\01\00\e0\d2\01\00\f3\d2\01\00\00\d3\01\00V\d3\01\00`\d3\01\00x\d3\01\00\00\d4\01\00\9f\d4\01\00\a2\d4\01\00\a2\d4\01\00\a5\d4\01\00\a6\d4\01\00\a9\d4\01\00\0a\d5\01\00\0d\d5\01\00F\d5\01\00J\d5\01\00\a5\d6\01\00\a8\d6\01\00\cb\d7\01\00\ce\d7\01\00\8b\da\01\00\9b\da\01\00\af\da\01\00\00\e0\01\00\18\e0\01\00\1b\e0\01\00*\e0\01\00\00\e1\01\00,\e1\01\000\e1\01\00=\e1\01\00@\e1\01\00I\e1\01\00N\e1\01\00O\e1\01\00\c0\e2\01\00\f9\e2\01\00\ff\e2\01\00\ff\e2\01\00\00\e8\01\00\c4\e8\01\00\c7\e8\01\00\d6\e8\01\00\00\e9\01\00K\e9\01\00P\e9\01\00Y\e9\01\00^\e9\01\00_\e9\01\00q\ec\01\00\b4\ec\01\00\01\ed\01\00=\ed\01\00\00\ee\01\00$\ee\01\00'\ee\01\00;\ee\01\00B\ee\01\00B\ee\01\00G\ee\01\00T\ee\01\00W\ee\01\00d\ee\01\00g\ee\01\00\9b\ee\01\00\a1\ee\01\00\bb\ee\01\00\f0\ee\01\00\f1\ee\01\00\00\f0\01\00+\f0\01\000\f0\01\00\93\f0\01\00\a0\f0\01\00\ae\f0\01\00\b1\f0\01\00\f5\f0\01\00\00\f1\01\00\0c\f1\01\00\10\f1\01\00l\f1\01\00p\f1\01\00\ac\f1\01\00\e6\f1\01\00\02\f2\01\00\10\f2\01\00;\f2\01\00@\f2\01\00H\f2\01\00P\f2\01\00Q\f2\01\00`\f2\01\00e\f2\01\00\00\f3\01\00\d5\f6\01\00\e0\f6\01\00\ec\f6\01\00\f0\f6\01\00\fa\f6\01\00\00\f7\01\00s\f7\01\00\80\f7\01\00\d8\f7\01\00\e0\f7\01\00\eb\f7\01\00\00\f8\01\00\0b\f8\01\00\10\f8\01\00G\f8\01\00P\f8\01\00Y\f8\01\00`\f8\01\00\87\f8\01\00\90\f8\01\00\ad\f8\01\00\00\f9\01\00v\f9\01\00z\f9\01\00\a2\f9\01\00\a5\f9\01\00\aa\f9\01\00\ae\f9\01\00\ca\f9\01\00\cd\f9\01\00S\fa\01\00`\fa\01\00m\fa\01\00p\fa\01\00s\fa\01\00x\fa\01\00z\fa\01\00\80\fa\01\00\82\fa\01\00\90\fa\01\00\95\fa\01\00\00\00\02\00\d6\a6\02\00\00\a7\02\004\b7\02\00@\b7\02\00\1d\b8\02\00 \b8\02\00\a1\ce\02\00\b0\ce\02\00\e0\eb\02\00\00\f8\02\00\1d\fa\02\00\00\01\0e\00\ef\01\0e\00\0c\00'\00;\00>\00\8f\01\9e\03\09\086\08V\08\f3\08\04\0a\14\0a\18\0a\bd\105\11\e0\11\12\12\87\12\89\12\8e\12\9e\12\04\13)\131\134\13:\13Z\14\5c\14\09\1c7\1c\a8\1c\07\1d\0a\1d;\1d>\1df\1di\1d\8f\1d\92\1do$_jZkbkU\d4\9d\d4\ad\d4\ba\d4\bc\d4\c4\d4\06\d5\15\d5\1d\d5:\d5?\d5E\d5Q\d5\a0\da\07\e0\22\e0%\e0\04\ee \ee#\ee(\ee3\ee8\ee:\eeH\eeJ\eeL\eeP\eeS\eeX\eeZ\ee\5c\ee^\ee`\eec\eek\ees\eex\ee}\ee\7f\ee\8a\ee\a4\ee\aa\ee\c0\f0\d0\f0\0c\f9r\f9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\000F\01\00\00\00\00\00\90\05\01\00\17\00\00\00\10\01\00\00\01\00\00\00\a7\05\01\00\0b\00\00\00\00\00\00\00\d0\19\01\00\00\00\00\00\01\00\00\00\d8\0c\01\00\01\00\00\00\01\00\00\00\d9\0c\01\00\02\00\00\00\01\00\00\00\db\0c\01\00\03\00\00\00\02\00\00\00\de\0c\01\00\03\00\00\00\02\00\00\00\e1\0c\01\00\04\00\00\00\02\00\00\00\e5\0c\01\00\05\00\00\00\03\00\00\00\ea\0c\01\00\05\00\00\00\03\00\00\00\ef\0c\01\00\06\00\00\00\03\00\00\00\f5\0c\01\00\07\00\00\00\04\00\00\00\fc\0c\01\00\07\00\00\00\04\00\00\00\03\0d\01\00\08\00\00\00\04\00\00\00\0b\0d\01\00\09\00\00\00\04\00\00\00\14\0d\01\00\0a\00\00\00\05\00\00\00\1e\0d\01\00\0a\00\00\00\05\00\00\00(\0d\01\00\0b\00\00\00\05\00\00\003\0d\01\00\0c\00\00\00\06\00\00\00?\0d\01\00\0c\00\00\00\06\00\00\00K\0d\01\00\0d\00\00\00\06\00\00\00X\0d\01\00\0e\00\00\00\07\00\00\00f\0d\01\00\0e\00\00\00\07\00\00\00t\0d\01\00\0f\00\00\00\07\00\00\00\83\0d\01\00\10\00\00\00\07\00\00\00\a0\0d\01\00\11\00\00\00\08\00\00\00\c0\0d\01\00\11\00\00\00\08\00\00\00\e0\0d\01\00\12\00\00\00\08\00\00\00\00\0e\01\00\13\00\00\00\09\00\00\00 \0e\01\00\13\00\00\00\09\00\00\00@\0e\01\00\14\00\00\00\09\00\00\00`\0e\01\00\15\00\00\00\0a\00\00\00\80\0e\01\00\15\00\00\00\0a\00\00\00\a0\0e\01\00\16\00\00\00\0a\00\00\00\c0\0e\01\00\17\00\00\00\0a\00\00\00\e0\0e\01\00\18\00\00\00\0b\00\00\00\00\0f\01\00\18\00\00\00\0b\00\00\00 \0f\01\00\19\00\00\00\0b\00\00\00@\0f\01\00\1a\00\00\00\0c\00\00\00`\0f\01\00\1a\00\00\00\0c\00\00\00\80\0f\01\00\1b\00\00\00\0c\00\00\00\a0\0f\01\00\1c\00\00\00\0d\00\00\00\c0\0f\01\00\1c\00\00\00\0d\00\00\00\e0\0f\01\00\1d\00\00\00\0d\00\00\00\00\10\01\00\1e\00\00\00\0d\00\00\00 \10\01\00\1f\00\00\00\0e\00\00\00@\10\01\00\1f\00\00\00\0e\00\00\00`\10\01\00 \00\00\00\0e\00\00\00\80\10\01\00!\00\00\00\0f\00\00\00\b0\10\01\00!\00\00\00\0f\00\00\00\e0\10\01\00\22\00\00\00\0f\00\00\00\10\11\01\00#\00\00\00\10\00\00\00@\11\01\00#\00\00\00\10\00\00\00p\11\01\00$\00\00\00\10\00\00\00\a0\11\01\00%\00\00\00\10\00\00\00\d0\11\01\00&\00\00\00\11\00\00\00\00\12\01\00&\00\00\00\11\00\00\000\12\01\00'\00\00\00\11\00\00\00`\12\01\00(\00\00\00\12\00\00\00\90\12\01\00(\00\00\00\12\00\00\00\c0\12\01\00)\00\00\00\12\00\00\00\f0\12\01\00*\00\00\00\13\00\00\00 \13\01\00*\00\00\00\8b$I\92$I\92$I\92$I\92$I\92$I\92$I\92$I"))
