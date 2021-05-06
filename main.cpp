#include <iostream>
#include <vector>
#include <random>
#include "include/softposit.h"
#include <cstdlib>
#include <cstdio>
#include <cstring>

uint32_t format_posit(posit_2_t p, int bits) {
    uint32_t raw = p.v;
    uint32_t shift = 32 - bits;
    uint32_t shifted = raw >> shift;
    return shifted;
}

std::pair<std::vector<double>, std::vector<double> > generate_doubles(char** args) {
    std::vector<double> av;
    std::vector<double> bv;
    // 0 is number, 1 is algorithm
    int total = atoi(args[0]);
    if (strcmp(args[1], "ex1") == 0) {
        av = {2.0, 1.5, 1.875, 256.0, 1.875};
        bv = {0.125, 0.09375, 0.1171875, 0.5, 12.0};
    } else if (strcmp(args[1], "test") == 0) {
        av = {0.0, 1.0, 2.0, 3.0, 1.5, -4.0};
        bv = {0.0, -1.0, -2.0, -3.0, -1.5, -4.0};
    } else if (strcmp(args[1], "test2") == 0) {
        av = {0.0, 1.0, 2.0, 3.0, 1.5, 4.0};
        bv = {0.0, 1.0, 2.0, 3.0, 1.5, 4.0};
    } else if (strcmp(args[1], "test3") == 0) {
        av = {0.25};
        bv = {1.0};
    } else {
        // random
        std::random_device rd;
        std::mt19937 gen(rd());
        auto dist = std::uniform_real_distribution<double>(0, INFINITY);
        for (int i = 0; i < total; ++i) {
            av.push_back(dist(gen));
            bv.push_back(dist(gen));
        }
    }

    return std::make_pair(av, bv);
}

void es2_main(FILE* f, int bits, std::pair<std::vector<double>, std::vector<double> > const &list) {
    posit_2_t a;
    posit_2_t b;
    quire_2_t q;
    std::vector<double> av = list.first;
    std::vector<double> bv = list.second;

    q = qX2Clr();

    for (int i = 0; i < av.size(); ++i) {
        a = convertDoubleToPX2(av[i], bits);
        b = convertDoubleToPX2(bv[i], bits);
        printf("%f(%f) %f(%f)\n", av[i], convertPX2ToDouble(a), bv[i], convertPX2ToDouble(b));
        q = qX2_fdp_add(q, a, b);
    }

    posit_2_t result = qX2_to_pX2(q, bits);
    fprintf(f, "%x", format_posit(result, bits));

    for (int i = 0; i < av.size(); ++i) {
        a = convertDoubleToPX2(av[i], bits);
        b = convertDoubleToPX2(bv[i], bits);
        fprintf(f, "\n%x %x", format_posit(a, bits), format_posit(b, bits));
    }
    printf("%f\n", convertPX2ToDouble(result));
}

// arguments: bits es number algo
int main(int argc, char** argv) {
    if (argc != 5) {
        return -1;
    }
    auto list = generate_doubles(argv + 3);
    auto f = fopen("tpfdata", "w");
    int bits = atoi(argv[1]);
    if (bits > 32) {
        printf("bits must <= 32 due to library limitations\n");
        goto error;
    }
    switch (atoi(argv[2])) {
        case 2:
            es2_main(f, bits, list);
            break;
        default:
            printf("es must == 2 due to library limitations\n");
            goto error;
    }
    fclose(f);
    return 0;
    error:
    fclose(f);
    return -2;
}
