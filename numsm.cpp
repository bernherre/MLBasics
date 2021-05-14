#include <cstdio>
#include <map>
using namespace std;
 
#define I i++;
#define V v++;
#define X x++;
#define L l++;
#define C c++;
 
char sol[] = "%d: %d i, %d v, %d x, %d l, %d c\n";
int n, m, i, v, x, l, c;
 
int main() {
    while (scanf("%d", &n) == 1 && n++) {
        i = v = x = l = c = 0;
        for (m = 1; m < n; ++m) {
            switch (m % 10) {
            case 1: I break;
            case 2: I I break;
            case 3: I I I break;
            case 4: I V break;
            case 5: V break;
            case 6: V I break;
            case 7: V I I break;
            case 8: V I I I break;
            case 9: I X break;
            }
            switch (m / 10) {
            case 1: X break;
            case 2: X X break;
            case 3: X X X break;
            case 4: X L break;
            case 5: L break;
            case 6: L X break;
            case 7: L X X break;
            case 8: L X X X break;
            case 9: X C break;
            case 10: C break;
            }
        }
        printf(sol, --n, i, v, x, l, c);
    }
    return 0;
}
