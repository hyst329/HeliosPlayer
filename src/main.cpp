#include <ncurses/ncurses.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
  WINDOW *mainwin;

  if ((mainwin = initscr()) == NULL) {
    fprintf(stderr, "Error initialising ncurses.\n");
    exit(1);
  }

  mvaddstr(13, 33, "Hello, world!");
  refresh();
  sleep(3);

  delwin(mainwin);
  endwin();
  refresh();

  return 0;
}
