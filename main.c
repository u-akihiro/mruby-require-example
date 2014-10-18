#include <stdio.h>
#include <mruby.h>
#include <mruby/compile.h>

int
main(void)
{
  mrb_state* mrb = mrb_open();
  FILE *fp = fopen("mruby.rb", "r");
  mrb_load_file(mrb, fp);
  mrb_close(mrb);

  return 0;
}
