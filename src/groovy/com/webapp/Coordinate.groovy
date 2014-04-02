package com.webapp

/**
 * Created by jdstuart on 4/2/14.
 */
class Coordinate
{
    double x
    double y
    String genre

    public Coordinate(double x, double y, String genre)
    {
        this.x = x
        this.y = y
        this.genre = genre
    }

    @Override
    String toString()
    {
        return "${x} ${y} (${genre})"
    }
}
