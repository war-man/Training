﻿/*
 * Демонстрация наследования, абстрактных классов, виртуальных и абстрактных методов.
*/

using System;

namespace TrainingCenter.FiguresDemo
{
    /// <summary>Неопределенная геометрическая фигура</summary>
    /// <remarks>В C# запрещено создавать экземпляры абстрактных классов</remarks>
    public abstract class Figure
    {
        public int X { get; set; }
        public int Y { get; set; }

        public abstract double ComputeArea();
        public abstract string WhoAmI();

        //public override string ToString()
        //{
        //    return "Непонятная загогулина";
        //}
    }

    public class Rectangle : Figure
    {
        public double Width { get; private set; }
        public double Height { get; private set; }

        public Rectangle(double width, double height)
        {
            Width = width;
            Height = height;
        }

        public override double ComputeArea()
        {
            return Width * Height;
        }

        public override string WhoAmI()
        {
            return "Прямоугольник";
        }

        public override string ToString()
        {
            return string.Format("Прямоугольник. Ширина={0}. Высота={1}", Width, Height);
        }

        public override bool Equals(object obj)
        {
            Rectangle other = obj as Rectangle;
            if (other == null) return false;

            return (Math.Abs(Width - other.Width) < 0.000001) && (Math.Abs(Height - other.Height) < 0.000001);
        }
    }

    public class Square : Rectangle
    {
        public Square(double size)
            : base(size, size)
        {
        }

        public double Size
        {
            get
            {
                // Т.к. ширина и высота квадрата совпадают, то неважно какое из свойств  - Width или Height - использовать
                return Width;
            }
        }

        public override string WhoAmI()
        {
            return "Квадрат";
        }

        public override string ToString()
        {
            return string.Format("Квадрат. Размер={0}", Width);
        }
    }

    public class Ellipse : Figure
    {
        public double MajorRadius { get; private set; }
        public double MinorRadius { get; private set; }

        public Ellipse(double majorRadius, double minorRadius)
        {
            // Радиус большой оси должен быть больше радиуса малой оси
            if (minorRadius > majorRadius)
            {
                MajorRadius = minorRadius;
                MinorRadius = majorRadius;
            }
            else
            {
                MajorRadius = majorRadius;
                MinorRadius = minorRadius;
            }
        }

        public override double ComputeArea()
        {
            return Math.PI * MajorRadius * MinorRadius;
        }

        public override string WhoAmI()
        {
            return "Эллипс";
        }

        public override string ToString()
        {
            return string.Format("Эллипс. Большой радиус={0:F2}. Малый радиус={1:F2}", MajorRadius, MinorRadius);
        }

        public override bool Equals(object obj)
        {
            Ellipse other = obj as Ellipse;
            if (other == null) return false;

            return (Math.Abs(MajorRadius - other.MajorRadius) < 0.000001) && (Math.Abs(MinorRadius - other.MinorRadius) < 0.000001);
        }
    }

    public class Circle : Ellipse
    {
        public double Radius
        {
            get
            {
                // Т.к. оба радиуса окружности совпадают, то неважно какое из свойств  - MajorRadius или MinorRadius - использовать
                return MajorRadius;
            }
        }

        public Circle(double radius)
            : base(radius, radius)
        {
        }

        public override string WhoAmI()
        {
            return "Окружность";
        }

        public override string ToString()
        {
            return string.Format("Окружность. Радиус={0:F2}.", Radius);
        }
    }

    /// <summary>
    /// Правильный треугольник. Все стороны равны.
    /// </summary>
    public class Triangle : Figure
    {
        public double SideLength { get; private set; }

        public Triangle(double sideLength)
        {
            SideLength = sideLength;
        }

        public override double ComputeArea()
        {
            return SideLength * SideLength * Math.Sqrt(3) / 4f;
        }

        public override string WhoAmI()
        {
            return "Правильный треугольник";
        }

        //public override string ToString()
        //{
        //    return string.Format("Правильный треугольник. Длина стороны={0:F2}.", SideLength);
        //}

        public override bool Equals(object obj)
        {
            Triangle other = obj as Triangle;
            if (other == null) return false;

            return (Math.Abs(SideLength - other.SideLength) < 0.000001);
        }
    }
}
